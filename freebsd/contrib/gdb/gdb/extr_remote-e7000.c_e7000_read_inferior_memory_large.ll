; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_e7000_read_inferior_memory_large.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_e7000_read_inferior_memory_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"d %s %s\0D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @e7000_read_inferior_memory_large to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e7000_read_inferior_memory_large(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [200 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %11, 1
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EIO, align 4
  store i32 %18, i32* @errno, align 4
  store i32 0, i32* %4, align 4
  br label %94

19:                                               ; preds = %3
  %20 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %21 = load i32, i32* %5, align 4
  %22 = call i8* @paddr_nz(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  %26 = sub nsw i32 %25, 1
  %27 = call i8* @paddr_nz(i32 %26)
  %28 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %27)
  %29 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %30 = call i32 @puts_e7000debug(i8* %29)
  store i32 0, i32* %8, align 4
  %31 = call i32 (...) @gch()
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %35, %19
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 62
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (...) @gch()
  store i32 %36, i32* %9, align 4
  br label %32

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %41, %37
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 13
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (...) @gch()
  store i32 %42, i32* %9, align 4
  br label %38

43:                                               ; preds = %38
  %44 = call i32 (...) @gch()
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %85, %43
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %53, %49
  %51 = load i32, i32* %9, align 4
  %52 = icmp sle i32 %51, 32
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (...) @gch()
  store i32 %54, i32* %9, align 4
  br label %50

55:                                               ; preds = %50
  %56 = call zeroext i8 @get_hex(i32* %9)
  br label %57

57:                                               ; preds = %78, %55
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 34
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i1 [ false, %57 ], [ %63, %60 ]
  br i1 %65, label %66, label %79

66:                                               ; preds = %64
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 32
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 (...) @gch()
  store i32 %70, i32* %9, align 4
  br label %78

71:                                               ; preds = %66
  %72 = call zeroext i8 @get_hex(i32* %9)
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  store i8 %72, i8* %77, align 1
  br label %78

78:                                               ; preds = %71, %69
  br label %57

79:                                               ; preds = %64
  br label %80

80:                                               ; preds = %83, %79
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 13
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 (...) @gch()
  store i32 %84, i32* %9, align 4
  br label %80

85:                                               ; preds = %80
  br label %45

86:                                               ; preds = %45
  br label %87

87:                                               ; preds = %90, %86
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 58
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = call i32 (...) @gch()
  store i32 %91, i32* %9, align 4
  br label %87

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %17
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @paddr_nz(i32) #1

declare dso_local i32 @puts_e7000debug(i8*) #1

declare dso_local i32 @gch(...) #1

declare dso_local zeroext i8 @get_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
