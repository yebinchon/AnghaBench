; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_do_root_update_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_do_root_update_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_result = type { i32, i64 }

@verb = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s failed, retrying direct\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"success: the anchor is ok\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"debug cert update forced\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"fail: the anchor is NOT ok and could not be fixed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32)* @do_root_update_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_root_update_work(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.ub_result*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i8* %0, i8** %16, align 8
  store i8* %1, i8** %17, align 8
  store i8* %2, i8** %18, align 8
  store i8* %3, i8** %19, align 8
  store i8* %4, i8** %20, align 8
  store i8* %5, i8** %21, align 8
  store i8* %6, i8** %22, align 8
  store i8* %7, i8** %23, align 8
  store i8* %8, i8** %24, align 8
  store i32 %9, i32* %25, align 4
  store i32 %10, i32* %26, align 4
  store i32 %11, i32* %27, align 4
  store i32 %12, i32* %28, align 4
  store i32 %13, i32* %29, align 4
  store i32 0, i32* %31, align 4
  %33 = load i8*, i8** %16, align 8
  %34 = call i32 @provide_builtin(i8* %33, i32* %31)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %14
  store i32 0, i32* %15, align 4
  br label %144

37:                                               ; preds = %14
  %38 = load i8*, i8** %16, align 8
  %39 = load i8*, i8** %22, align 8
  %40 = load i8*, i8** %23, align 8
  %41 = load i8*, i8** %24, align 8
  %42 = load i32, i32* %25, align 4
  %43 = load i32, i32* %26, align 4
  %44 = call %struct.ub_result* @fetch_root_key(i8* %38, i8* %39, i8* %40, i8* %41, i32 %42, i32 %43)
  store %struct.ub_result* %44, %struct.ub_result** %30, align 8
  %45 = load %struct.ub_result*, %struct.ub_result** %30, align 8
  %46 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %32, align 4
  %48 = load i32, i32* %28, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %82

50:                                               ; preds = %37
  %51 = load i8*, i8** %22, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %82

53:                                               ; preds = %50
  %54 = load %struct.ub_result*, %struct.ub_result** %30, align 8
  %55 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %82, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* @verb, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** %22, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.ub_result*, %struct.ub_result** %30, align 8
  %66 = call i32 @ub_resolve_free(%struct.ub_result* %65)
  %67 = load i8*, i8** %16, align 8
  %68 = load i8*, i8** %23, align 8
  %69 = load i8*, i8** %24, align 8
  %70 = load i32, i32* %25, align 4
  %71 = load i32, i32* %26, align 4
  %72 = call %struct.ub_result* @fetch_root_key(i8* %67, i8* null, i8* %68, i8* %69, i32 %70, i32 %71)
  store %struct.ub_result* %72, %struct.ub_result** %30, align 8
  %73 = load i32, i32* %32, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %64
  %76 = load %struct.ub_result*, %struct.ub_result** %30, align 8
  %77 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i8* null, i8** %22, align 8
  store i32 0, i32* %32, align 4
  br label %81

81:                                               ; preds = %80, %75, %64
  br label %82

82:                                               ; preds = %81, %53, %50, %37
  %83 = load %struct.ub_result*, %struct.ub_result** %30, align 8
  %84 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load i32, i32* %27, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %87
  %91 = load i64, i64* @verb, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %90
  %96 = load %struct.ub_result*, %struct.ub_result** %30, align 8
  %97 = call i32 @ub_resolve_free(%struct.ub_result* %96)
  %98 = load i32, i32* %31, align 4
  store i32 %98, i32* %15, align 4
  br label %144

99:                                               ; preds = %87, %82
  %100 = load i32, i32* %27, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i64, i64* @verb, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %102, %99
  %108 = load %struct.ub_result*, %struct.ub_result** %30, align 8
  %109 = call i32 @ub_resolve_free(%struct.ub_result* %108)
  %110 = load i32, i32* %32, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i8*, i8** %16, align 8
  %114 = call i64 @probe_date_allows_certupdate(i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %112, %107
  %117 = load i32, i32* %27, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %137

119:                                              ; preds = %116, %112
  %120 = load i8*, i8** %16, align 8
  %121 = load i8*, i8** %17, align 8
  %122 = load i8*, i8** %18, align 8
  %123 = load i8*, i8** %19, align 8
  %124 = load i8*, i8** %20, align 8
  %125 = load i8*, i8** %21, align 8
  %126 = load i8*, i8** %22, align 8
  %127 = load i8*, i8** %23, align 8
  %128 = load i8*, i8** %24, align 8
  %129 = load i32, i32* %25, align 4
  %130 = load i32, i32* %26, align 4
  %131 = load i32, i32* %29, align 4
  %132 = call i64 @do_certupdate(i8* %120, i8* %121, i8* %122, i8* %123, i8* %124, i8* %125, i8* %126, i8* %127, i8* %128, i32 %129, i32 %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %119
  store i32 1, i32* %15, align 4
  br label %144

135:                                              ; preds = %119
  %136 = load i32, i32* %31, align 4
  store i32 %136, i32* %15, align 4
  br label %144

137:                                              ; preds = %116
  %138 = load i64, i64* @verb, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %137
  %143 = load i32, i32* %31, align 4
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %142, %135, %134, %95, %36
  %145 = load i32, i32* %15, align 4
  ret i32 %145
}

declare dso_local i32 @provide_builtin(i8*, i32*) #1

declare dso_local %struct.ub_result* @fetch_root_key(i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ub_resolve_free(%struct.ub_result*) #1

declare dso_local i64 @probe_date_allows_certupdate(i8*) #1

declare dso_local i64 @do_certupdate(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
