; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pjdfstest/extr_pjdfstest.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pjdfstest/extr_pjdfstest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall_desc = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"g:u:U:\00", align 1
@optarg = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"invalid uid '%s' - number expected\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"invalid umask '%s' - number expected\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"too few arguments\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"changing groups to %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"changing uid to %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"cannot change uid: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"syscall '%s' not supported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.syscall_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %10, align 4
  store i8* null, i8** %8, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %62, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %12, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %63

18:                                               ; preds = %13
  %19 = load i32, i32* %12, align 4
  switch i32 %19, label %60 [
    i32 103, label %20
    i32 117, label %22
    i32 85, label %41
  ]

20:                                               ; preds = %18
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** %8, align 8
  br label %62

22:                                               ; preds = %18
  %23 = load i8*, i8** @optarg, align 8
  %24 = call i64 @strtol(i8* %23, i8** %9, i32 0)
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load i8*, i8** %9, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @isspace(i8 zeroext %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8*, i8** @optarg, align 8
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %30, %22
  br label %62

41:                                               ; preds = %18
  %42 = load i8*, i8** @optarg, align 8
  %43 = call i64 @strtol(i8* %42, i8** %9, i32 0)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %11, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @isspace(i8 zeroext %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @stderr, align 4
  %56 = load i8*, i8** @optarg, align 8
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  %58 = call i32 @exit(i32 1) #3
  unreachable

59:                                               ; preds = %49, %41
  br label %62

60:                                               ; preds = %18
  %61 = call i32 (...) @usage()
  br label %62

62:                                               ; preds = %60, %59, %40, %20
  br label %13

63:                                               ; preds = %13
  %64 = load i64, i64* @optind, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = sub nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %4, align 4
  %69 = load i64, i64* @optind, align 8
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 %69
  store i8** %71, i8*** %5, align 8
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 1
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load i32, i32* @stderr, align 4
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %77 = call i32 (...) @usage()
  br label %78

78:                                               ; preds = %74, %63
  %79 = load i8*, i8** %8, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32, i32* @stderr, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %83)
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @set_gids(i8* %85)
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = load i32, i32* @stderr, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = call i64 @setuid(i32 %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load i32, i32* @stderr, align 4
  %99 = load i32, i32* @errno, align 4
  %100 = call i8* @strerror(i32 %99)
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %100)
  %102 = call i32 @exit(i32 1) #3
  unreachable

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103, %87
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @umask(i32 %105)
  br label %107

107:                                              ; preds = %141, %104
  %108 = load i8**, i8*** %5, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 0
  %110 = load i8*, i8** %109, align 8
  %111 = call %struct.syscall_desc* @find_syscall(i8* %110)
  store %struct.syscall_desc* %111, %struct.syscall_desc** %6, align 8
  %112 = load %struct.syscall_desc*, %struct.syscall_desc** %6, align 8
  %113 = icmp eq %struct.syscall_desc* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load i32, i32* @stderr, align 4
  %116 = load i8**, i8*** %5, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %118)
  %120 = call i32 @exit(i32 1) #3
  unreachable

121:                                              ; preds = %107
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %4, align 4
  %124 = load i8**, i8*** %5, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i32 1
  store i8** %125, i8*** %5, align 8
  %126 = load %struct.syscall_desc*, %struct.syscall_desc** %6, align 8
  %127 = load i8**, i8*** %5, align 8
  %128 = call i32 @call_syscall(%struct.syscall_desc* %126, i8** %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %4, align 4
  %131 = add i32 %130, %129
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i8**, i8*** %5, align 8
  %134 = zext i32 %132 to i64
  %135 = getelementptr inbounds i8*, i8** %133, i64 %134
  store i8** %135, i8*** %5, align 8
  %136 = load i8**, i8*** %5, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 0
  %138 = load i8*, i8** %137, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %121
  br label %146

141:                                              ; preds = %121
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %4, align 4
  %144 = load i8**, i8*** %5, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i32 1
  store i8** %145, i8*** %5, align 8
  br label %107

146:                                              ; preds = %140
  %147 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usage(...) #1

declare dso_local i32 @set_gids(i8*) #1

declare dso_local i64 @setuid(i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @umask(i32) #1

declare dso_local %struct.syscall_desc* @find_syscall(i8*) #1

declare dso_local i32 @call_syscall(%struct.syscall_desc*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
