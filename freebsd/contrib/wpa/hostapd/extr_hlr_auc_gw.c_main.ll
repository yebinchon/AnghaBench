; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_socket_path = common dso_local global i8* null, align 8
@socket_path = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"D:g:hi:m:s:u\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"No SQLite support included in the build\0A\00", align 1
@optarg = common dso_local global i8* null, align 8
@ind_len = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid IND length\0A\00", align 1
@milenage_file = common dso_local global i8* null, align 8
@update_milenage = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@serv_sock = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Listening for requests on %s\0A\00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@handle_term = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@stdout_debug = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@sqlite_db = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1000 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = call i64 (...) @os_program_init()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %119

14:                                               ; preds = %2
  %15 = load i8*, i8** @default_socket_path, align 8
  store i8* %15, i8** @socket_path, align 8
  br label %16

16:                                               ; preds = %49, %14
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %50

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %47 [
    i32 68, label %25
    i32 103, label %27
    i32 104, label %29
    i32 105, label %31
    i32 109, label %42
    i32 115, label %44
    i32 117, label %46
  ]

25:                                               ; preds = %23
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %119

27:                                               ; preds = %23
  %28 = load i8*, i8** @optarg, align 8
  store i8* %28, i8** %7, align 8
  br label %49

29:                                               ; preds = %23
  %30 = call i32 (...) @usage()
  store i32 0, i32* %3, align 4
  br label %119

31:                                               ; preds = %23
  %32 = load i8*, i8** @optarg, align 8
  %33 = call i32 @atoi(i8* %32)
  store i32 %33, i32* @ind_len, align 4
  %34 = load i32, i32* @ind_len, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ind_len, align 4
  %38 = icmp sgt i32 %37, 32
  br i1 %38, label %39, label %41

39:                                               ; preds = %36, %31
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %119

41:                                               ; preds = %36
  br label %49

42:                                               ; preds = %23
  %43 = load i8*, i8** @optarg, align 8
  store i8* %43, i8** @milenage_file, align 8
  br label %49

44:                                               ; preds = %23
  %45 = load i8*, i8** @optarg, align 8
  store i8* %45, i8** @socket_path, align 8
  br label %49

46:                                               ; preds = %23
  store i32 1, i32* @update_milenage, align 4
  br label %49

47:                                               ; preds = %23
  %48 = call i32 (...) @usage()
  store i32 -1, i32* %3, align 4
  br label %119

49:                                               ; preds = %46, %44, %42, %41, %27
  br label %16

50:                                               ; preds = %22
  %51 = load i8*, i8** %7, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** @milenage_file, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = call i32 (...) @usage()
  store i32 -1, i32* %3, align 4
  br label %119

61:                                               ; preds = %56, %53, %50
  %62 = load i8*, i8** %7, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i8*, i8** %7, align 8
  %66 = call i64 @read_gsm_triplets(i8* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 -1, i32* %3, align 4
  br label %119

69:                                               ; preds = %64, %61
  %70 = load i8*, i8** @milenage_file, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i8*, i8** @milenage_file, align 8
  %74 = call i64 @read_milenage(i8* %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 -1, i32* %3, align 4
  br label %119

77:                                               ; preds = %72, %69
  %78 = load i32, i32* @optind, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %77
  %82 = load i8*, i8** @socket_path, align 8
  %83 = call i64 @open_socket(i8* %82)
  store i64 %83, i64* @serv_sock, align 8
  %84 = load i64, i64* @serv_sock, align 8
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 -1, i32* %3, align 4
  br label %119

87:                                               ; preds = %81
  %88 = load i8*, i8** @socket_path, align 8
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %88)
  %90 = call i32 @atexit(i32 (...)* @cleanup)
  %91 = load i32, i32* @SIGTERM, align 4
  %92 = load i32, i32* @handle_term, align 4
  %93 = call i32 @signal(i32 %91, i32 %92)
  %94 = load i32, i32* @SIGINT, align 4
  %95 = load i32, i32* @handle_term, align 4
  %96 = call i32 @signal(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %97, %87
  %98 = load i64, i64* @serv_sock, align 8
  %99 = call i32 @process(i64 %98)
  br label %97

100:                                              ; preds = %77
  store i8* null, i8** @socket_path, align 8
  store i64 0, i64* @stdout_debug, align 8
  %101 = load i8**, i8*** %5, align 8
  %102 = load i32, i32* @optind, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds [1000 x i8], [1000 x i8]* %10, i64 0, i64 0
  %107 = call i64 @process_cmd(i8* %105, i8* %106, i32 1000)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %114

111:                                              ; preds = %100
  %112 = getelementptr inbounds [1000 x i8], [1000 x i8]* %10, i64 0, i64 0
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %111, %109
  %115 = call i32 (...) @cleanup()
  br label %116

116:                                              ; preds = %114
  %117 = call i32 (...) @os_program_deinit()
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %116, %86, %76, %68, %59, %47, %39, %29, %25, %13
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i64 @os_program_init(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @read_gsm_triplets(i8*) #1

declare dso_local i64 @read_milenage(i8*) #1

declare dso_local i64 @open_socket(i8*) #1

declare dso_local i32 @atexit(i32 (...)*) #1

declare dso_local i32 @cleanup(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @process(i64) #1

declare dso_local i64 @process_cmd(i8*, i8*, i32) #1

declare dso_local i32 @os_program_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
