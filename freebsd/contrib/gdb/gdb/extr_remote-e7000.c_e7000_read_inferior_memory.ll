; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_e7000_read_inferior_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_e7000_read_inferior_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"m %s;l\0D\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c".\0D\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @e7000_read_inferior_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e7000_read_inferior_memory(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [200 x i8], align 16
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sub nsw i32 %13, 1
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EIO, align 4
  store i32 %20, i32* @errno, align 4
  store i32 0, i32* %4, align 4
  br label %94

21:                                               ; preds = %3
  %22 = getelementptr inbounds [200 x i8], [200 x i8]* %11, i64 0, i64 0
  %23 = load i32, i32* %5, align 4
  %24 = call i8* @paddr_nz(i32 %23)
  %25 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = getelementptr inbounds [200 x i8], [200 x i8]* %11, i64 0, i64 0
  %27 = call i32 @puts_e7000debug(i8* %26)
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %88, %21
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %91

32:                                               ; preds = %28
  %33 = call i32 (...) @gch()
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %37, %32
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 32
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @gch()
  store i32 %38, i32* %9, align 4
  br label %34

39:                                               ; preds = %34
  %40 = call i32 (...) @gch()
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 42
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = call i32 @puts_e7000debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32 (...) @expect_full_prompt()
  store i32 -1, i32* %4, align 4
  br label %94

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %50, %46
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 32
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (...) @gch()
  store i32 %51, i32* %9, align 4
  br label %47

52:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %73, %52
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 4
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  %57 = call i32 (...) @gbyte()
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load i32, i32* %12, align 4
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %66, i64 %70
  store i8 %65, i8* %71, align 1
  br label %72

72:                                               ; preds = %63, %56
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %53

76:                                               ; preds = %53
  %77 = call i32 (...) @gch()
  %78 = call i32 (...) @gch()
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = call i32 @puts_e7000debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %87

85:                                               ; preds = %76
  %86 = call i32 @puts_e7000debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %83
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 4
  store i32 %90, i32* %8, align 4
  br label %28

91:                                               ; preds = %28
  %92 = call i32 (...) @expect_prompt()
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %91, %43, %19
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @paddr_nz(i32) #1

declare dso_local i32 @puts_e7000debug(i8*) #1

declare dso_local i32 @gch(...) #1

declare dso_local i32 @expect_full_prompt(...) #1

declare dso_local i32 @gbyte(...) #1

declare dso_local i32 @expect_prompt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
