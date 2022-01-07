; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_debug_print_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_debug_print_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@NUM_REGS = common dso_local global i32 0, align 4
@NUM_PSEUDO_REGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" 0x%s %s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @debug_print_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_print_register(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @gdb_stdlog, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @NUM_REGS, align 4
  %16 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %17 = add nsw i32 %15, %16
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = call i8* @REGISTER_NAME(i32 %20)
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = call i8* @REGISTER_NAME(i32 %24)
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32, i32* @gdb_stdlog, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i8* @REGISTER_NAME(i32 %32)
  %34 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %39

35:                                               ; preds = %23, %19, %13, %2
  %36 = load i32, i32* @gdb_stdlog, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %4, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %83

42:                                               ; preds = %39
  %43 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %6, align 8
  %46 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %7, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @deprecated_read_register_gen(i32 %47, i8* %46)
  %49 = load i32, i32* @gdb_stdlog, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %64, %42
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %53)
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load i32, i32* @gdb_stdlog, align 4
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %46, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %51

67:                                               ; preds = %51
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %68)
  %70 = sext i32 %69 to i64
  %71 = icmp ule i64 %70, 4
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load i32, i32* @gdb_stdlog, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @read_register(i32 %74)
  %76 = call i32 @paddr_nz(i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @read_register(i32 %77)
  %79 = call i32 @paddr_d(i32 %78)
  %80 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %72, %67
  %82 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %82)
  br label %83

83:                                               ; preds = %81, %39
  %84 = load i32, i32* @gdb_stdlog, align 4
  %85 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf_unfiltered(i32, i8*, ...) #1

declare dso_local i8* @REGISTER_NAME(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @deprecated_read_register_gen(i32, i8*) #1

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #1

declare dso_local i32 @paddr_nz(i32) #1

declare dso_local i32 @read_register(i32) #1

declare dso_local i32 @paddr_d(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
