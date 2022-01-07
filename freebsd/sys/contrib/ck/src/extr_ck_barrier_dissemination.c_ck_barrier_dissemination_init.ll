; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_dissemination.c_ck_barrier_dissemination_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_dissemination.c_ck_barrier_dissemination_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_barrier_dissemination = type { i32, i32, %struct.ck_barrier_dissemination_flag**, i32 }
%struct.ck_barrier_dissemination_flag = type { i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ck_barrier_dissemination_init(%struct.ck_barrier_dissemination* %0, %struct.ck_barrier_dissemination_flag** %1, i32 %2) #0 {
  %4 = alloca %struct.ck_barrier_dissemination*, align 8
  %5 = alloca %struct.ck_barrier_dissemination_flag**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ck_barrier_dissemination* %0, %struct.ck_barrier_dissemination** %4, align 8
  store %struct.ck_barrier_dissemination_flag** %1, %struct.ck_barrier_dissemination_flag*** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub i32 %14, 1
  %16 = and i32 %13, %15
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ck_barrier_dissemination*, %struct.ck_barrier_dissemination** %4, align 8
  %19 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ck_internal_power_2(i32 %20)
  %22 = call i32 @ck_internal_log(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.ck_barrier_dissemination*, %struct.ck_barrier_dissemination** %4, align 8
  %24 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ck_barrier_dissemination*, %struct.ck_barrier_dissemination** %4, align 8
  %26 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %25, i32 0, i32 3
  %27 = call i32 @ck_pr_store_uint(i32* %26, i32 0)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %60, %3
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %28
  %33 = load %struct.ck_barrier_dissemination_flag**, %struct.ck_barrier_dissemination_flag*** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ck_barrier_dissemination_flag*, %struct.ck_barrier_dissemination_flag** %33, i64 %35
  %37 = load %struct.ck_barrier_dissemination_flag*, %struct.ck_barrier_dissemination_flag** %36, align 8
  %38 = load %struct.ck_barrier_dissemination*, %struct.ck_barrier_dissemination** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %38, i64 %40
  %42 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %41, i32 0, i32 2
  %43 = load %struct.ck_barrier_dissemination_flag**, %struct.ck_barrier_dissemination_flag*** %42, align 8
  %44 = getelementptr inbounds %struct.ck_barrier_dissemination_flag*, %struct.ck_barrier_dissemination_flag** %43, i64 0
  store %struct.ck_barrier_dissemination_flag* %37, %struct.ck_barrier_dissemination_flag** %44, align 8
  %45 = load %struct.ck_barrier_dissemination_flag**, %struct.ck_barrier_dissemination_flag*** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ck_barrier_dissemination_flag*, %struct.ck_barrier_dissemination_flag** %45, i64 %47
  %49 = load %struct.ck_barrier_dissemination_flag*, %struct.ck_barrier_dissemination_flag** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ck_barrier_dissemination_flag, %struct.ck_barrier_dissemination_flag* %49, i64 %51
  %53 = load %struct.ck_barrier_dissemination*, %struct.ck_barrier_dissemination** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %53, i64 %55
  %57 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %56, i32 0, i32 2
  %58 = load %struct.ck_barrier_dissemination_flag**, %struct.ck_barrier_dissemination_flag*** %57, align 8
  %59 = getelementptr inbounds %struct.ck_barrier_dissemination_flag*, %struct.ck_barrier_dissemination_flag** %58, i64 1
  store %struct.ck_barrier_dissemination_flag* %52, %struct.ck_barrier_dissemination_flag** %59, align 8
  br label %60

60:                                               ; preds = %32
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %28

63:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %168, %63
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %171

68:                                               ; preds = %64
  store i32 0, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %69

69:                                               ; preds = %162, %68
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %167

73:                                               ; preds = %69
  %74 = load i32, i32* %12, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add i32 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = sub i32 %80, 1
  %82 = and i32 %79, %81
  store i32 %82, i32* %8, align 4
  br label %89

83:                                               ; preds = %73
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add i32 %84, %85
  %87 = load i32, i32* %6, align 4
  %88 = urem i32 %86, %87
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %83, %76
  %90 = load %struct.ck_barrier_dissemination*, %struct.ck_barrier_dissemination** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %90, i64 %92
  %94 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %93, i32 0, i32 2
  %95 = load %struct.ck_barrier_dissemination_flag**, %struct.ck_barrier_dissemination_flag*** %94, align 8
  %96 = getelementptr inbounds %struct.ck_barrier_dissemination_flag*, %struct.ck_barrier_dissemination_flag** %95, i64 0
  %97 = load %struct.ck_barrier_dissemination_flag*, %struct.ck_barrier_dissemination_flag** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.ck_barrier_dissemination_flag, %struct.ck_barrier_dissemination_flag* %97, i64 %99
  %101 = getelementptr inbounds %struct.ck_barrier_dissemination_flag, %struct.ck_barrier_dissemination_flag* %100, i32 0, i32 0
  %102 = load %struct.ck_barrier_dissemination*, %struct.ck_barrier_dissemination** %4, align 8
  %103 = load i32, i32* %7, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %102, i64 %104
  %106 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %105, i32 0, i32 2
  %107 = load %struct.ck_barrier_dissemination_flag**, %struct.ck_barrier_dissemination_flag*** %106, align 8
  %108 = getelementptr inbounds %struct.ck_barrier_dissemination_flag*, %struct.ck_barrier_dissemination_flag** %107, i64 0
  %109 = load %struct.ck_barrier_dissemination_flag*, %struct.ck_barrier_dissemination_flag** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.ck_barrier_dissemination_flag, %struct.ck_barrier_dissemination_flag* %109, i64 %111
  %113 = getelementptr inbounds %struct.ck_barrier_dissemination_flag, %struct.ck_barrier_dissemination_flag* %112, i32 0, i32 1
  store i64* %101, i64** %113, align 8
  %114 = load %struct.ck_barrier_dissemination*, %struct.ck_barrier_dissemination** %4, align 8
  %115 = load i32, i32* %8, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %114, i64 %116
  %118 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %117, i32 0, i32 2
  %119 = load %struct.ck_barrier_dissemination_flag**, %struct.ck_barrier_dissemination_flag*** %118, align 8
  %120 = getelementptr inbounds %struct.ck_barrier_dissemination_flag*, %struct.ck_barrier_dissemination_flag** %119, i64 1
  %121 = load %struct.ck_barrier_dissemination_flag*, %struct.ck_barrier_dissemination_flag** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.ck_barrier_dissemination_flag, %struct.ck_barrier_dissemination_flag* %121, i64 %123
  %125 = getelementptr inbounds %struct.ck_barrier_dissemination_flag, %struct.ck_barrier_dissemination_flag* %124, i32 0, i32 0
  %126 = load %struct.ck_barrier_dissemination*, %struct.ck_barrier_dissemination** %4, align 8
  %127 = load i32, i32* %7, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %126, i64 %128
  %130 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %129, i32 0, i32 2
  %131 = load %struct.ck_barrier_dissemination_flag**, %struct.ck_barrier_dissemination_flag*** %130, align 8
  %132 = getelementptr inbounds %struct.ck_barrier_dissemination_flag*, %struct.ck_barrier_dissemination_flag** %131, i64 1
  %133 = load %struct.ck_barrier_dissemination_flag*, %struct.ck_barrier_dissemination_flag** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.ck_barrier_dissemination_flag, %struct.ck_barrier_dissemination_flag* %133, i64 %135
  %137 = getelementptr inbounds %struct.ck_barrier_dissemination_flag, %struct.ck_barrier_dissemination_flag* %136, i32 0, i32 1
  store i64* %125, i64** %137, align 8
  %138 = load %struct.ck_barrier_dissemination*, %struct.ck_barrier_dissemination** %4, align 8
  %139 = load i32, i32* %7, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %138, i64 %140
  %142 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %141, i32 0, i32 2
  %143 = load %struct.ck_barrier_dissemination_flag**, %struct.ck_barrier_dissemination_flag*** %142, align 8
  %144 = getelementptr inbounds %struct.ck_barrier_dissemination_flag*, %struct.ck_barrier_dissemination_flag** %143, i64 1
  %145 = load %struct.ck_barrier_dissemination_flag*, %struct.ck_barrier_dissemination_flag** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.ck_barrier_dissemination_flag, %struct.ck_barrier_dissemination_flag* %145, i64 %147
  %149 = getelementptr inbounds %struct.ck_barrier_dissemination_flag, %struct.ck_barrier_dissemination_flag* %148, i32 0, i32 0
  store i64 0, i64* %149, align 8
  %150 = load %struct.ck_barrier_dissemination*, %struct.ck_barrier_dissemination** %4, align 8
  %151 = load i32, i32* %7, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %150, i64 %152
  %154 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %153, i32 0, i32 2
  %155 = load %struct.ck_barrier_dissemination_flag**, %struct.ck_barrier_dissemination_flag*** %154, align 8
  %156 = getelementptr inbounds %struct.ck_barrier_dissemination_flag*, %struct.ck_barrier_dissemination_flag** %155, i64 0
  %157 = load %struct.ck_barrier_dissemination_flag*, %struct.ck_barrier_dissemination_flag** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.ck_barrier_dissemination_flag, %struct.ck_barrier_dissemination_flag* %157, i64 %159
  %161 = getelementptr inbounds %struct.ck_barrier_dissemination_flag, %struct.ck_barrier_dissemination_flag* %160, i32 0, i32 0
  store i64 0, i64* %161, align 8
  br label %162

162:                                              ; preds = %89
  %163 = load i32, i32* %9, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %11, align 4
  %166 = shl i32 %165, 1
  store i32 %166, i32* %11, align 4
  br label %69

167:                                              ; preds = %69
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %7, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %7, align 4
  br label %64

171:                                              ; preds = %64
  ret void
}

declare dso_local i32 @ck_internal_log(i32) #1

declare dso_local i32 @ck_internal_power_2(i32) #1

declare dso_local i32 @ck_pr_store_uint(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
