; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_devinfo.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_devinfo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i8 }
%struct.ibv_device = type { i32 }

@main.long_options = internal global [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 1, i8 100 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 1, i8 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 0, i8 108 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 0, i8 118 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"ib-dev\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ib-port\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"d:i:lv\00", align 1
@optarg = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to get IB devices list\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"%d HCA%s found:\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"IB device '%s' wasn't found\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"No IB devices found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ibv_device**, align 8
  %9 = alloca %struct.ibv_device**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %2, %70
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt_long(i32 %14, i8** %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @main.long_options, i64 0, i64 0), i32* null)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %71

20:                                               ; preds = %13
  %21 = load i32, i32* %12, align 4
  switch i32 %21, label %65 [
    i32 100, label %22
    i32 105, label %25
    i32 118, label %36
    i32 108, label %37
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @optarg, align 4
  %24 = call i8* @strdup(i32 %23)
  store i8* %24, i8** %6, align 8
  br label %70

25:                                               ; preds = %20
  %26 = load i32, i32* @optarg, align 4
  %27 = call i32 @strtol(i32 %26, i32* null, i32 0)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @usage(i8* %33)
  store i32 1, i32* %3, align 4
  br label %143

35:                                               ; preds = %25
  br label %70

36:                                               ; preds = %20
  store i32 1, i32* @verbose, align 4
  br label %70

37:                                               ; preds = %20
  %38 = call %struct.ibv_device** @ibv_get_device_list(i32* %10)
  store %struct.ibv_device** %38, %struct.ibv_device*** %9, align 8
  store %struct.ibv_device** %38, %struct.ibv_device*** %8, align 8
  %39 = load %struct.ibv_device**, %struct.ibv_device*** %8, align 8
  %40 = icmp ne %struct.ibv_device** %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %143

43:                                               ; preds = %37
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 1
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %44, i8* %48)
  br label %50

50:                                               ; preds = %54, %43
  %51 = load %struct.ibv_device**, %struct.ibv_device*** %8, align 8
  %52 = load %struct.ibv_device*, %struct.ibv_device** %51, align 8
  %53 = icmp ne %struct.ibv_device* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load %struct.ibv_device**, %struct.ibv_device*** %8, align 8
  %56 = load %struct.ibv_device*, %struct.ibv_device** %55, align 8
  %57 = call i8* @ibv_get_device_name(%struct.ibv_device* %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %57)
  %59 = load %struct.ibv_device**, %struct.ibv_device*** %8, align 8
  %60 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %59, i32 1
  store %struct.ibv_device** %60, %struct.ibv_device*** %8, align 8
  br label %50

61:                                               ; preds = %50
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %63 = load %struct.ibv_device**, %struct.ibv_device*** %9, align 8
  %64 = call i32 @ibv_free_device_list(%struct.ibv_device** %63)
  store i32 0, i32* %3, align 4
  br label %143

65:                                               ; preds = %20
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @usage(i8* %68)
  store i32 -1, i32* %3, align 4
  br label %143

70:                                               ; preds = %36, %35, %22
  br label %13

71:                                               ; preds = %19
  %72 = call %struct.ibv_device** @ibv_get_device_list(i32* null)
  store %struct.ibv_device** %72, %struct.ibv_device*** %9, align 8
  store %struct.ibv_device** %72, %struct.ibv_device*** %8, align 8
  %73 = load %struct.ibv_device**, %struct.ibv_device*** %8, align 8
  %74 = icmp ne %struct.ibv_device** %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %143

77:                                               ; preds = %71
  %78 = load i8*, i8** %6, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %111

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %93, %80
  %82 = load %struct.ibv_device**, %struct.ibv_device*** %8, align 8
  %83 = load %struct.ibv_device*, %struct.ibv_device** %82, align 8
  %84 = icmp ne %struct.ibv_device* %83, null
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load %struct.ibv_device**, %struct.ibv_device*** %8, align 8
  %87 = load %struct.ibv_device*, %struct.ibv_device** %86, align 8
  %88 = call i8* @ibv_get_device_name(%struct.ibv_device* %87)
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @strcmp(i8* %88, i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %85
  br label %96

93:                                               ; preds = %85
  %94 = load %struct.ibv_device**, %struct.ibv_device*** %8, align 8
  %95 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %94, i32 1
  store %struct.ibv_device** %95, %struct.ibv_device*** %8, align 8
  br label %81

96:                                               ; preds = %92, %81
  %97 = load %struct.ibv_device**, %struct.ibv_device*** %8, align 8
  %98 = load %struct.ibv_device*, %struct.ibv_device** %97, align 8
  %99 = icmp ne %struct.ibv_device* %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* @stderr, align 4
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* %102)
  store i32 -1, i32* %3, align 4
  br label %143

104:                                              ; preds = %96
  %105 = load %struct.ibv_device**, %struct.ibv_device*** %8, align 8
  %106 = load %struct.ibv_device*, %struct.ibv_device** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @print_hca_cap(%struct.ibv_device* %106, i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %7, align 4
  br label %133

111:                                              ; preds = %77
  %112 = load %struct.ibv_device**, %struct.ibv_device*** %8, align 8
  %113 = load %struct.ibv_device*, %struct.ibv_device** %112, align 8
  %114 = icmp ne %struct.ibv_device* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* @stderr, align 4
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %143

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %123, %118
  %120 = load %struct.ibv_device**, %struct.ibv_device*** %8, align 8
  %121 = load %struct.ibv_device*, %struct.ibv_device** %120, align 8
  %122 = icmp ne %struct.ibv_device* %121, null
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load %struct.ibv_device**, %struct.ibv_device*** %8, align 8
  %125 = load %struct.ibv_device*, %struct.ibv_device** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @print_hca_cap(%struct.ibv_device* %125, i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %7, align 4
  %130 = load %struct.ibv_device**, %struct.ibv_device*** %8, align 8
  %131 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %130, i32 1
  store %struct.ibv_device** %131, %struct.ibv_device*** %8, align 8
  br label %119

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132, %104
  %134 = load i8*, i8** %6, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i8*, i8** %6, align 8
  %138 = call i32 @free(i8* %137)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load %struct.ibv_device**, %struct.ibv_device*** %9, align 8
  %141 = call i32 @ibv_free_device_list(%struct.ibv_device** %140)
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %139, %115, %100, %75, %65, %61, %41, %30
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @strtol(i32, i32*, i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local %struct.ibv_device** @ibv_get_device_list(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ibv_get_device_name(%struct.ibv_device*) #1

declare dso_local i32 @ibv_free_device_list(%struct.ibv_device**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @print_hca_cap(%struct.ibv_device*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
