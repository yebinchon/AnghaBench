; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dumpfs/extr_dumpfs.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dumpfs/extr_dumpfs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"lfm\00", align 1
@optind = common dso_local global i64 0, align 8
@disk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %27, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %7, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %25 [
    i32 102, label %19
    i32 109, label %22
    i32 108, label %23
    i32 63, label %24
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  br label %27

22:                                               ; preds = %17
  store i32 1, i32* %9, align 4
  br label %27

23:                                               ; preds = %17
  store i32 1, i32* %10, align 4
  br label %27

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %17, %24
  %26 = call i32 (...) @usage()
  br label %27

27:                                               ; preds = %25, %23, %22, %19
  br label %12

28:                                               ; preds = %12
  %29 = load i64, i64* @optind, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %4, align 4
  %34 = load i64, i64* @optind, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 %34
  store i8** %36, i8*** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = call i32 (...) @usage()
  br label %41

41:                                               ; preds = %39, %28
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 (...) @usage()
  br label %49

49:                                               ; preds = %47, %44, %41
  %50 = load i32, i32* %8, align 4
  %51 = icmp sgt i32 %50, 2
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 (...) @usage()
  br label %54

54:                                               ; preds = %52, %49
  br label %55

55:                                               ; preds = %100, %64, %54
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i32 1
  store i8** %57, i8*** %5, align 8
  %58 = load i8*, i8** %56, align 8
  store i8* %58, i8** %6, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %102

60:                                               ; preds = %55
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @ufs_disk_fillout(i32* @disk, i8* %61)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @ufserr(i8* %65)
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %55

69:                                               ; preds = %60
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @dumpfreespace(i8* %73, i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %11, align 4
  br label %100

78:                                               ; preds = %69
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @marshal(i8* %82)
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %11, align 4
  br label %99

86:                                               ; preds = %78
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = call i32 (...) @dumpfsid()
  %91 = load i32, i32* %11, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %11, align 4
  br label %98

93:                                               ; preds = %86
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @dumpfs(i8* %94)
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %93, %89
  br label %99

99:                                               ; preds = %98, %81
  br label %100

100:                                              ; preds = %99, %72
  %101 = call i32 @ufs_disk_close(i32* @disk)
  br label %55

102:                                              ; preds = %55
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @exit(i32 %103) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @ufs_disk_fillout(i32*, i8*) #1

declare dso_local i32 @ufserr(i8*) #1

declare dso_local i32 @dumpfreespace(i8*, i32) #1

declare dso_local i32 @marshal(i8*) #1

declare dso_local i32 @dumpfsid(...) #1

declare dso_local i32 @dumpfs(i8*) #1

declare dso_local i32 @ufs_disk_close(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
