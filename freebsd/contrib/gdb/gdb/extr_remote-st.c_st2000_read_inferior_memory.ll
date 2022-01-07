; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-st.c_st2000_read_inferior_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-st.c_st2000_read_inferior_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"DI.L %x %x\0D\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c":  \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @st2000_read_inferior_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st2000_read_inferior_memory(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sub nsw i32 %12, 1
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EIO, align 4
  store i32 %19, i32* @errno, align 4
  store i32 0, i32* %4, align 4
  br label %75

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %67, %20
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %73

27:                                               ; preds = %23
  store i32 16, i32* %11, align 4
  %28 = load i64, i64* %10, align 8
  %29 = urem i64 %28, 16
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i64, i64* %10, align 8
  %33 = urem i64 %32, 16
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %31, %27
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %40, %41
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @printf_stdebug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %49, i32 %50)
  %52 = call i32 @expect(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %64, %48
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = call i32 @get_hex_byte(i8* %62)
  br label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %53

67:                                               ; preds = %53
  %68 = call i32 @expect_prompt(i32 1)
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %10, align 8
  br label %23

73:                                               ; preds = %23
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %18
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @printf_stdebug(i8*, i64, i32) #1

declare dso_local i32 @expect(i8*, i32) #1

declare dso_local i32 @get_hex_byte(i8*) #1

declare dso_local i32 @expect_prompt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
