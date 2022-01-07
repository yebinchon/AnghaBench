; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex.c_ex_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex.c_ex_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_16__* }

@SC_EX_GLOBAL = common dso_local global i32 0, align 4
@E_NAMEDISCARD = common dso_local global i32 0, align 4
@AGV_ALL = common dso_local global i32 0, align 4
@q = common dso_local global i32 0, align 4
@AGV_GLOBAL = common dso_local global i32 0, align 4
@AGV_V = common dso_local global i32 0, align 4
@OOBLNO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @ex_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ex_load(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = load i32, i32* @SC_EX_GLOBAL, align 4
  %9 = call i32 @F_CLR(%struct.TYPE_15__* %7, i32 %8)
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %4, align 8
  br label %13

13:                                               ; preds = %129, %1
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_16__* @SLIST_FIRST(i32 %16)
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %5, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = load i32, i32* @E_NAMEDISCARD, align 4
  %20 = call i64 @F_ISSET(%struct.TYPE_16__* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 9
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = call i32 @free(%struct.TYPE_16__* %25)
  br label %27

27:                                               ; preds = %22, %13
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = icmp eq %struct.TYPE_16__* %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 9
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %34, align 8
  store i32 0, i32* %2, align 4
  br label %183

35:                                               ; preds = %27
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %183

41:                                               ; preds = %35
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @AGV_ALL, align 4
  %46 = call i64 @FL_ISSET(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %129

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %73, %48
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.TYPE_16__* @TAILQ_FIRST(i32 %52)
  store %struct.TYPE_16__* %53, %struct.TYPE_16__** %6, align 8
  %54 = icmp ne %struct.TYPE_16__* %53, null
  br i1 %54, label %55, label %74

55:                                               ; preds = %49
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %55
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = load i32, i32* @q, align 4
  %69 = call i32 @TAILQ_REMOVE(i32 %66, %struct.TYPE_16__* %67, i32 %68)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = call i32 @free(%struct.TYPE_16__* %70)
  br label %73

72:                                               ; preds = %55
  br label %74

73:                                               ; preds = %63
  br label %49

74:                                               ; preds = %72, %49
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %76 = icmp ne %struct.TYPE_16__* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %137

78:                                               ; preds = %74
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @AGV_GLOBAL, align 4
  %83 = load i32, i32* @AGV_V, align 4
  %84 = or i32 %82, %83
  %85 = call i64 @FL_ISSET(i32 %81, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %123

87:                                               ; preds = %78
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @OOBLNO, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %123

93:                                               ; preds = %87
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @db_exist(%struct.TYPE_15__* %94, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %122

106:                                              ; preds = %93
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = call i64 @db_last(%struct.TYPE_15__* %107, i64* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i32 1, i32* %2, align 4
  br label %183

113:                                              ; preds = %106
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  store i64 1, i64* %120, align 8
  br label %121

121:                                              ; preds = %118, %113
  br label %122

122:                                              ; preds = %121, %100
  br label %123

123:                                              ; preds = %122, %87, %78
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to %struct.TYPE_16__*
  %128 = call i32 @free(%struct.TYPE_16__* %127)
  br label %129

129:                                              ; preds = %123, %41
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @q, align 4
  %134 = call i32 @SLIST_REMOVE_HEAD(i32 %132, i32 %133)
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %136 = call i32 @free(%struct.TYPE_16__* %135)
  br label %13

137:                                              ; preds = %77
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 4
  store i64 %140, i64* %142, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 6
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %148, %151
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @MEMCPY(i64 %145, i64 %152, i64 %155)
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 6
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %163, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  store i64 %164, i64* %167, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 3
  store i64 %164, i64* %169, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @AGV_GLOBAL, align 4
  %174 = load i32, i32* @AGV_V, align 4
  %175 = or i32 %173, %174
  %176 = call i64 @FL_ISSET(i32 %172, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %137
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %180 = load i32, i32* @SC_EX_GLOBAL, align 4
  %181 = call i32 @F_SET(%struct.TYPE_15__* %179, i32 %180)
  br label %182

182:                                              ; preds = %178, %137
  store i32 0, i32* %2, align 4
  br label %183

183:                                              ; preds = %182, %112, %40, %32
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @F_CLR(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_16__* @SLIST_FIRST(i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_16__*) #1

declare dso_local i64 @FL_ISSET(i32, i32) #1

declare dso_local %struct.TYPE_16__* @TAILQ_FIRST(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @db_exist(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @db_last(%struct.TYPE_15__*, i64*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32, i32) #1

declare dso_local i32 @MEMCPY(i64, i64, i64) #1

declare dso_local i32 @F_SET(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
