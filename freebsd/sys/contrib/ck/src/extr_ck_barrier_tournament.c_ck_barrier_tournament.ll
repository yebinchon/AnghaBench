; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_tournament.c_ck_barrier_tournament.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_tournament.c_ck_barrier_tournament.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_barrier_tournament = type { i32, i32 }
%struct.ck_barrier_tournament_state = type { i64, i32 }
%struct.ck_barrier_tournament_round = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ck_barrier_tournament(%struct.ck_barrier_tournament* %0, %struct.ck_barrier_tournament_state* %1) #0 {
  %3 = alloca %struct.ck_barrier_tournament*, align 8
  %4 = alloca %struct.ck_barrier_tournament_state*, align 8
  %5 = alloca %struct.ck_barrier_tournament_round**, align 8
  %6 = alloca i32, align 4
  store %struct.ck_barrier_tournament* %0, %struct.ck_barrier_tournament** %3, align 8
  store %struct.ck_barrier_tournament_state* %1, %struct.ck_barrier_tournament_state** %4, align 8
  %7 = load %struct.ck_barrier_tournament*, %struct.ck_barrier_tournament** %3, align 8
  %8 = getelementptr inbounds %struct.ck_barrier_tournament, %struct.ck_barrier_tournament* %7, i32 0, i32 1
  %9 = call %struct.ck_barrier_tournament_round** @ck_pr_load_ptr(i32* %8)
  store %struct.ck_barrier_tournament_round** %9, %struct.ck_barrier_tournament_round*** %5, align 8
  store i32 1, i32* %6, align 4
  %10 = load %struct.ck_barrier_tournament*, %struct.ck_barrier_tournament** %3, align 8
  %11 = getelementptr inbounds %struct.ck_barrier_tournament, %struct.ck_barrier_tournament* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %171

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %121, %15
  %17 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %18 = load %struct.ck_barrier_tournament_state*, %struct.ck_barrier_tournament_state** %4, align 8
  %19 = getelementptr inbounds %struct.ck_barrier_tournament_state, %struct.ck_barrier_tournament_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %17, i64 %20
  %22 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %22, i64 %24
  %26 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %120 [
    i32 132, label %28
    i32 131, label %29
    i32 130, label %64
    i32 129, label %65
    i32 128, label %100
  ]

28:                                               ; preds = %16
  br label %120

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %46, %29
  %31 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %32 = load %struct.ck_barrier_tournament_state*, %struct.ck_barrier_tournament_state** %4, align 8
  %33 = getelementptr inbounds %struct.ck_barrier_tournament_state, %struct.ck_barrier_tournament_state* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %31, i64 %34
  %36 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %36, i64 %38
  %40 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %39, i32 0, i32 2
  %41 = call i32 @ck_pr_load_uint(i32* %40)
  %42 = load %struct.ck_barrier_tournament_state*, %struct.ck_barrier_tournament_state** %4, align 8
  %43 = getelementptr inbounds %struct.ck_barrier_tournament_state, %struct.ck_barrier_tournament_state* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %30
  %47 = call i32 (...) @ck_pr_stall()
  br label %30

48:                                               ; preds = %30
  %49 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %50 = load %struct.ck_barrier_tournament_state*, %struct.ck_barrier_tournament_state** %4, align 8
  %51 = getelementptr inbounds %struct.ck_barrier_tournament_state, %struct.ck_barrier_tournament_state* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %49, i64 %52
  %54 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %54, i64 %56
  %58 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ck_barrier_tournament_state*, %struct.ck_barrier_tournament_state** %4, align 8
  %61 = getelementptr inbounds %struct.ck_barrier_tournament_state, %struct.ck_barrier_tournament_state* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ck_pr_store_uint(i32 %59, i32 %62)
  br label %124

64:                                               ; preds = %16
  br label %120

65:                                               ; preds = %16
  %66 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %67 = load %struct.ck_barrier_tournament_state*, %struct.ck_barrier_tournament_state** %4, align 8
  %68 = getelementptr inbounds %struct.ck_barrier_tournament_state, %struct.ck_barrier_tournament_state* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %66, i64 %69
  %71 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %71, i64 %73
  %75 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ck_barrier_tournament_state*, %struct.ck_barrier_tournament_state** %4, align 8
  %78 = getelementptr inbounds %struct.ck_barrier_tournament_state, %struct.ck_barrier_tournament_state* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ck_pr_store_uint(i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %97, %65
  %82 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %83 = load %struct.ck_barrier_tournament_state*, %struct.ck_barrier_tournament_state** %4, align 8
  %84 = getelementptr inbounds %struct.ck_barrier_tournament_state, %struct.ck_barrier_tournament_state* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %82, i64 %85
  %87 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %87, i64 %89
  %91 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %90, i32 0, i32 2
  %92 = call i32 @ck_pr_load_uint(i32* %91)
  %93 = load %struct.ck_barrier_tournament_state*, %struct.ck_barrier_tournament_state** %4, align 8
  %94 = getelementptr inbounds %struct.ck_barrier_tournament_state, %struct.ck_barrier_tournament_state* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %92, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %81
  %98 = call i32 (...) @ck_pr_stall()
  br label %81

99:                                               ; preds = %81
  br label %124

100:                                              ; preds = %16
  br label %101

101:                                              ; preds = %117, %100
  %102 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %103 = load %struct.ck_barrier_tournament_state*, %struct.ck_barrier_tournament_state** %4, align 8
  %104 = getelementptr inbounds %struct.ck_barrier_tournament_state, %struct.ck_barrier_tournament_state* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %102, i64 %105
  %107 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %107, i64 %109
  %111 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %110, i32 0, i32 2
  %112 = call i32 @ck_pr_load_uint(i32* %111)
  %113 = load %struct.ck_barrier_tournament_state*, %struct.ck_barrier_tournament_state** %4, align 8
  %114 = getelementptr inbounds %struct.ck_barrier_tournament_state, %struct.ck_barrier_tournament_state* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %112, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %101
  %118 = call i32 (...) @ck_pr_stall()
  br label %101

119:                                              ; preds = %101
  br label %120

120:                                              ; preds = %16, %119, %64, %28
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %16

124:                                              ; preds = %99, %48
  %125 = load i32, i32* %6, align 4
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %160, %124
  %128 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %129 = load %struct.ck_barrier_tournament_state*, %struct.ck_barrier_tournament_state** %4, align 8
  %130 = getelementptr inbounds %struct.ck_barrier_tournament_state, %struct.ck_barrier_tournament_state* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %128, i64 %131
  %133 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %133, i64 %135
  %137 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  switch i32 %138, label %159 [
    i32 132, label %139
    i32 131, label %140
    i32 130, label %141
    i32 129, label %142
    i32 128, label %143
  ]

139:                                              ; preds = %127
  br label %159

140:                                              ; preds = %127
  br label %159

141:                                              ; preds = %127
  br label %163

142:                                              ; preds = %127
  br label %159

143:                                              ; preds = %127
  %144 = load %struct.ck_barrier_tournament_round**, %struct.ck_barrier_tournament_round*** %5, align 8
  %145 = load %struct.ck_barrier_tournament_state*, %struct.ck_barrier_tournament_state** %4, align 8
  %146 = getelementptr inbounds %struct.ck_barrier_tournament_state, %struct.ck_barrier_tournament_state* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %144, i64 %147
  %149 = load %struct.ck_barrier_tournament_round*, %struct.ck_barrier_tournament_round** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %149, i64 %151
  %153 = getelementptr inbounds %struct.ck_barrier_tournament_round, %struct.ck_barrier_tournament_round* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ck_barrier_tournament_state*, %struct.ck_barrier_tournament_state** %4, align 8
  %156 = getelementptr inbounds %struct.ck_barrier_tournament_state, %struct.ck_barrier_tournament_state* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @ck_pr_store_uint(i32 %154, i32 %157)
  br label %159

159:                                              ; preds = %127, %143, %142, %140, %139
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %6, align 4
  br label %127

163:                                              ; preds = %141
  %164 = call i32 (...) @ck_pr_fence_memory()
  %165 = load %struct.ck_barrier_tournament_state*, %struct.ck_barrier_tournament_state** %4, align 8
  %166 = getelementptr inbounds %struct.ck_barrier_tournament_state, %struct.ck_barrier_tournament_state* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = xor i32 %167, -1
  %169 = load %struct.ck_barrier_tournament_state*, %struct.ck_barrier_tournament_state** %4, align 8
  %170 = getelementptr inbounds %struct.ck_barrier_tournament_state, %struct.ck_barrier_tournament_state* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %163, %14
  ret void
}

declare dso_local %struct.ck_barrier_tournament_round** @ck_pr_load_ptr(i32*) #1

declare dso_local i32 @ck_pr_load_uint(i32*) #1

declare dso_local i32 @ck_pr_stall(...) #1

declare dso_local i32 @ck_pr_store_uint(i32, i32) #1

declare dso_local i32 @ck_pr_fence_memory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
