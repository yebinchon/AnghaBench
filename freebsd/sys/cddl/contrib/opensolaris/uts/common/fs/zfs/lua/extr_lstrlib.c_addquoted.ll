; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lstrlib.c_addquoted.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lstrlib.c_addquoted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\\%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\\%03d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @addquoted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addquoted(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [10 x i8], align 1
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i8* @luaL_checklstring(i32* %10, i32 %11, i64* %7)
  store i8* %12, i8** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @luaL_addchar(i32* %13, i8 signext 34)
  br label %15

15:                                               ; preds = %83, %3
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %7, align 8
  %18 = icmp ne i64 %16, 0
  br i1 %18, label %19, label %86

19:                                               ; preds = %15
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 34
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 92
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %41

34:                                               ; preds = %29, %24, %19
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @luaL_addchar(i32* %35, i8 signext 92)
  %37 = load i32*, i32** %5, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @luaL_addchar(i32* %37, i8 signext %39)
  br label %83

41:                                               ; preds = %29
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i64 @uchar(i8 signext %48)
  %50 = call i64 @iscntrl(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %46, %41
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @uchar(i8 signext %55)
  %57 = call i32 @isdigit(i64 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %61 = load i8*, i8** %8, align 8
  %62 = load i8, i8* %61, align 1
  %63 = call i64 @uchar(i8 signext %62)
  %64 = trunc i64 %63 to i32
  %65 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %73

66:                                               ; preds = %52
  %67 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %68 = load i8*, i8** %8, align 8
  %69 = load i8, i8* %68, align 1
  %70 = call i64 @uchar(i8 signext %69)
  %71 = trunc i64 %70 to i32
  %72 = call i32 @sprintf(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %66, %59
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %76 = call i32 @luaL_addstring(i32* %74, i8* %75)
  br label %82

77:                                               ; preds = %46
  %78 = load i32*, i32** %5, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call i32 @luaL_addchar(i32* %78, i8 signext %80)
  br label %82

82:                                               ; preds = %77, %73
  br label %83

83:                                               ; preds = %82, %34
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %8, align 8
  br label %15

86:                                               ; preds = %15
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @luaL_addchar(i32* %87, i8 signext 34)
  ret void
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_addchar(i32*, i8 signext) #1

declare dso_local i64 @iscntrl(i64) #1

declare dso_local i64 @uchar(i8 signext) #1

declare dso_local i32 @isdigit(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @luaL_addstring(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
