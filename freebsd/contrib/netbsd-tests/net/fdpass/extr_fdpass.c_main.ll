; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/fdpass/extr_fdpass.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/fdpass/extr_fdpass.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"di:o:p:\00", align 1
@debug = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@AF_LOCAL = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"socketpair\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"execlp\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"ls -l /proc/%d/fd\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"foo\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca [64 x i8], align 16
  %14 = alloca [64 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %12, align 8
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 -1, i32* %15, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %39, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %9, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %40

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %37 [
    i32 100, label %24
    i32 105, label %27
    i32 111, label %31
    i32 112, label %35
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @debug, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @debug, align 4
  br label %39

27:                                               ; preds = %22
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i32 @atoi(i8* %28)
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %29, i32* %30, align 4
  br label %39

31:                                               ; preds = %22
  %32 = load i8*, i8** @optarg, align 8
  %33 = call i32 @atoi(i8* %32)
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  br label %39

35:                                               ; preds = %22
  %36 = load i8*, i8** @optarg, align 8
  store i8* %36, i8** %12, align 8
  br label %39

37:                                               ; preds = %22
  %38 = call i32 (...) @usage()
  br label %39

39:                                               ; preds = %37, %35, %31, %27, %24
  br label %17

40:                                               ; preds = %17
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %56, label %48

48:                                               ; preds = %44, %40
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %52, %44
  %57 = call i32 (...) @usage()
  br label %58

58:                                               ; preds = %56, %52, %48
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i32, i32* @AF_LOCAL, align 4
  %64 = load i32, i32* @SOCK_DGRAM, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %66 = call i32 @socketpair(i32 %63, i32 %64, i32 0, i32* %65)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %62
  br label %72

71:                                               ; preds = %58
  br label %112

72:                                               ; preds = %70
  %73 = call i32 (...) @fork()
  switch i32 %73, label %76 [
    i32 -1, label %74
    i32 0, label %93
  ]

74:                                               ; preds = %72
  %75 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %76

76:                                               ; preds = %72, %74
  %77 = load i32, i32* @O_RDWR, align 4
  %78 = load i32, i32* @O_CREAT, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @O_TRUNC, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @open(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 438)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %76
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @send_fd(i32 %89, i32 %90)
  %92 = call i32 @wait(i32* %8)
  store i32 0, i32* %3, align 4
  br label %133

93:                                               ; preds = %72
  %94 = load i8*, i8** %12, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %111

96:                                               ; preds = %93
  %97 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @snprintf(i8* %97, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @snprintf(i8* %101, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  %105 = load i8*, i8** %12, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %108 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %109 = call i32 @execlp(i8* %105, i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %108, i32* null)
  %110 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %111

111:                                              ; preds = %96, %93
  br label %112

112:                                              ; preds = %111, %71
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @recv_fd(i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %120 = call i32 (...) @getpid()
  %121 = call i32 @snprintf(i8* %119, i32 1024, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %120)
  %122 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %123 = call i32 @system(i8* %122)
  br label %124

124:                                              ; preds = %118, %112
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @write(i32 %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = call i32 @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %124
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @close(i32 %131)
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %130, %87
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @send_fd(i32, i32) #1

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @execlp(i8*, i8*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @recv_fd(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
