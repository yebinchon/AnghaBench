; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.defns.c_ed_InitEmacsMaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.defns.c_ed_InitEmacsMaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@VImode = common dso_local global i64 0, align 8
@STRvimode = common dso_local global i32 0, align 4
@NT_NUM_KEYS = common dso_local global i32 0, align 4
@CcEmacsMap = common dso_local global i32* null, align 8
@CcKeyMap = common dso_local global i32* null, align 8
@F_UNASSIGNED = common dso_local global i32 0, align 4
@CcAltMap = common dso_local global i32* null, align 8
@F_EXCHANGE_MARK = common dso_local global i32 0, align 4
@XK_CMD = common dso_local global i32 0, align 4
@F_EXPAND_GLOB = common dso_local global i32 0, align 4
@F_EXPAND_VARS = common dso_local global i32 0, align 4
@F_LIST_GLOB = common dso_local global i32 0, align 4
@F_PATH_NORM = common dso_local global i32 0, align 4
@F_COMMAND_NORM = common dso_local global i32 0, align 4
@F_COMPLETE_ALL = common dso_local global i32 0, align 4
@F_LIST_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ed_InitEmacsMaps() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i8* %4, i8** %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 2, i32* %6, align 8
  store i64 0, i64* @VImode, align 8
  %7 = load i32, i32* @STRvimode, align 4
  %8 = call i64 @adrof(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* @STRvimode, align 4
  %12 = call i32 @unsetv(i32 %11)
  br label %13

13:                                               ; preds = %10, %0
  %14 = call i32 (...) @update_wordchars()
  %15 = call i32 (...) @ResetXmap()
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %35, %13
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @NT_NUM_KEYS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load i32*, i32** @CcEmacsMap, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @CcKeyMap, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* @F_UNASSIGNED, align 4
  %31 = load i32*, i32** @CcAltMap, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  br label %35

35:                                               ; preds = %20
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %16

38:                                               ; preds = %16
  %39 = call i32 (...) @ed_InitMetaBindings()
  %40 = call i32 (...) @ed_InitNLSMaps()
  %41 = call signext i8 @CTL_ESC(i8 signext 24)
  %42 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 0
  store i8 %41, i8* %42, align 1
  %43 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 2
  store i8 0, i8* %43, align 1
  %44 = call signext i8 @CTL_ESC(i8 signext 24)
  %45 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 1
  store i8 %44, i8* %45, align 1
  %46 = load i32, i32* @F_EXCHANGE_MARK, align 4
  %47 = call i32 @XmapCmd(i32 %46)
  %48 = load i32, i32* @XK_CMD, align 4
  %49 = call i32 @AddXkey(%struct.TYPE_3__* %3, i32 %47, i32 %48)
  %50 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 1
  store i8 42, i8* %50, align 1
  %51 = load i32, i32* @F_EXPAND_GLOB, align 4
  %52 = call i32 @XmapCmd(i32 %51)
  %53 = load i32, i32* @XK_CMD, align 4
  %54 = call i32 @AddXkey(%struct.TYPE_3__* %3, i32 %52, i32 %53)
  %55 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 1
  store i8 36, i8* %55, align 1
  %56 = load i32, i32* @F_EXPAND_VARS, align 4
  %57 = call i32 @XmapCmd(i32 %56)
  %58 = load i32, i32* @XK_CMD, align 4
  %59 = call i32 @AddXkey(%struct.TYPE_3__* %3, i32 %57, i32 %58)
  %60 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 1
  store i8 71, i8* %60, align 1
  %61 = load i32, i32* @F_LIST_GLOB, align 4
  %62 = call i32 @XmapCmd(i32 %61)
  %63 = load i32, i32* @XK_CMD, align 4
  %64 = call i32 @AddXkey(%struct.TYPE_3__* %3, i32 %62, i32 %63)
  %65 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 1
  store i8 103, i8* %65, align 1
  %66 = load i32, i32* @F_LIST_GLOB, align 4
  %67 = call i32 @XmapCmd(i32 %66)
  %68 = load i32, i32* @XK_CMD, align 4
  %69 = call i32 @AddXkey(%struct.TYPE_3__* %3, i32 %67, i32 %68)
  %70 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 1
  store i8 110, i8* %70, align 1
  %71 = load i32, i32* @F_PATH_NORM, align 4
  %72 = call i32 @XmapCmd(i32 %71)
  %73 = load i32, i32* @XK_CMD, align 4
  %74 = call i32 @AddXkey(%struct.TYPE_3__* %3, i32 %72, i32 %73)
  %75 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 1
  store i8 78, i8* %75, align 1
  %76 = load i32, i32* @F_PATH_NORM, align 4
  %77 = call i32 @XmapCmd(i32 %76)
  %78 = load i32, i32* @XK_CMD, align 4
  %79 = call i32 @AddXkey(%struct.TYPE_3__* %3, i32 %77, i32 %78)
  %80 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 1
  store i8 63, i8* %80, align 1
  %81 = load i32, i32* @F_COMMAND_NORM, align 4
  %82 = call i32 @XmapCmd(i32 %81)
  %83 = load i32, i32* @XK_CMD, align 4
  %84 = call i32 @AddXkey(%struct.TYPE_3__* %3, i32 %82, i32 %83)
  %85 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 1
  store i8 9, i8* %85, align 1
  %86 = load i32, i32* @F_COMPLETE_ALL, align 4
  %87 = call i32 @XmapCmd(i32 %86)
  %88 = load i32, i32* @XK_CMD, align 4
  %89 = call i32 @AddXkey(%struct.TYPE_3__* %3, i32 %87, i32 %88)
  %90 = call signext i8 @CTL_ESC(i8 signext 4)
  %91 = getelementptr inbounds [3 x i8], [3 x i8]* %2, i64 0, i64 1
  store i8 %90, i8* %91, align 1
  %92 = load i32, i32* @F_LIST_ALL, align 4
  %93 = call i32 @XmapCmd(i32 %92)
  %94 = load i32, i32* @XK_CMD, align 4
  %95 = call i32 @AddXkey(%struct.TYPE_3__* %3, i32 %93, i32 %94)
  %96 = call i32 (...) @ResetArrowKeys()
  %97 = call i32 (...) @BindArrowKeys()
  ret void
}

declare dso_local i64 @adrof(i32) #1

declare dso_local i32 @unsetv(i32) #1

declare dso_local i32 @update_wordchars(...) #1

declare dso_local i32 @ResetXmap(...) #1

declare dso_local i32 @ed_InitMetaBindings(...) #1

declare dso_local i32 @ed_InitNLSMaps(...) #1

declare dso_local signext i8 @CTL_ESC(i8 signext) #1

declare dso_local i32 @AddXkey(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @XmapCmd(i32) #1

declare dso_local i32 @ResetArrowKeys(...) #1

declare dso_local i32 @BindArrowKeys(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
