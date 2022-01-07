; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl_list.c_bectl_cmd_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl_list.c_bectl_cmd_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"aDHsc:C:\00", align 1
@optarg = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"bectl list: unknown option '-%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"bectl list: extra argument provided\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"bectl list: failed to allocate prop nvlist\0A\00", align 1
@be = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"bectl list: failed to fetch boot environments\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bectl_cmd_list(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.printc, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %12, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = call i32 @bzero(%struct.printc* %6, i32 16)
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %53, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %10, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %54

20:                                               ; preds = %15
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %48 [
    i32 97, label %22
    i32 68, label %24
    i32 72, label %26
    i32 115, label %28
    i32 99, label %30
    i32 67, label %39
  ]

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.printc, %struct.printc* %6, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %53

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.printc, %struct.printc* %6, i32 0, i32 1
  store i32 1, i32* %25, align 4
  br label %53

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.printc, %struct.printc* %6, i32 0, i32 2
  store i32 1, i32* %27, align 4
  br label %53

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.printc, %struct.printc* %6, i32 0, i32 3
  store i32 1, i32* %29, align 4
  br label %53

30:                                               ; preds = %20
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @free(i8* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i8*, i8** @optarg, align 8
  %38 = call i8* @strdup(i8* %37)
  store i8* %38, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %53

39:                                               ; preds = %20
  %40 = load i8*, i8** %12, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @free(i8* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i8* @strdup(i8* %46)
  store i8* %47, i8** %12, align 8
  store i32 1, i32* %13, align 4
  br label %53

48:                                               ; preds = %20
  %49 = load i32, i32* @stderr, align 4
  %50 = load i32, i32* @optopt, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = call i32 @usage(i32 0)
  store i32 %52, i32* %3, align 4
  br label %143

53:                                               ; preds = %45, %36, %28, %26, %24, %22
  br label %15

54:                                               ; preds = %15
  %55 = load i64, i64* @optind, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %65 = call i32 @usage(i32 0)
  store i32 %65, i32* %3, align 4
  br label %143

66:                                               ; preds = %54
  %67 = call i64 @be_prop_list_alloc(i32** %9)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %143

72:                                               ; preds = %66
  %73 = load i32, i32* @be, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = call i64 @be_get_bootenv_props(i32 %73, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @stderr, align 4
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %143

80:                                               ; preds = %72
  %81 = load i8*, i8** %12, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i8* %84, i8** %12, align 8
  br label %85

85:                                               ; preds = %83, %80
  %86 = load i32*, i32** %9, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @prop_list_sort(i32* %86, i8* %87, i32 %88)
  %90 = getelementptr inbounds %struct.printc, %struct.printc* %6, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.printc, %struct.printc* %6, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93, %85
  %98 = getelementptr inbounds %struct.printc, %struct.printc* %6, i32 0, i32 1
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %97, %93
  %100 = getelementptr inbounds %struct.printc, %struct.printc* %6, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 @print_headers(i32* %104, %struct.printc* %6)
  br label %106

106:                                              ; preds = %103, %99
  %107 = load i32*, i32** %9, align 8
  %108 = call i32* @nvlist_next_nvpair(i32* %107, i32* null)
  store i32* %108, i32** %7, align 8
  br label %109

109:                                              ; preds = %134, %106
  %110 = load i32*, i32** %7, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %138

112:                                              ; preds = %109
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @nvpair_value_nvlist(i32* %113, i32** %8)
  %115 = load i32, i32* %11, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.printc, %struct.printc* %6, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.printc, %struct.printc* %6, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %121, %117
  %126 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %121, %112
  %128 = load i32*, i32** %7, align 8
  %129 = call i32 @nvpair_name(i32* %128)
  %130 = load i32*, i32** %8, align 8
  %131 = call i32 @print_info(i32 %129, i32* %130, %struct.printc* %6)
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %127
  %135 = load i32*, i32** %9, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = call i32* @nvlist_next_nvpair(i32* %135, i32* %136)
  store i32* %137, i32** %7, align 8
  br label %109

138:                                              ; preds = %109
  %139 = load i8*, i8** %12, align 8
  %140 = call i32 @free(i8* %139)
  %141 = load i32*, i32** %9, align 8
  %142 = call i32 @be_prop_list_free(i32* %141)
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %138, %77, %69, %62, %48
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @bzero(%struct.printc*, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i64 @be_prop_list_alloc(i32**) #1

declare dso_local i64 @be_get_bootenv_props(i32, i32*) #1

declare dso_local i32 @prop_list_sort(i32*, i8*, i32) #1

declare dso_local i32 @print_headers(i32*, %struct.printc*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @print_info(i32, i32*, %struct.printc*) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32 @be_prop_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
