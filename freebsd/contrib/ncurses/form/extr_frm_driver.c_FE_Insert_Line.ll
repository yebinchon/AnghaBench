; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_FE_Insert_Line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_FE_Insert_Line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64, i32 }

@E_REQUEST_DENIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"FE_Insert_Line(%p)\00", align 1
@C_BLANK = common dso_local global i64 0, align 8
@E_SYSTEM_ERROR = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @FE_Insert_Line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FE_Insert_Line(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %4, align 8
  %10 = load i32, i32* @E_REQUEST_DENIED, align 4
  store i32 %10, i32* %5, align 4
  %11 = call i32 @T_CALLED(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = bitcast %struct.TYPE_10__* %12 to i8*
  %14 = ptrtoint i8* %13 to i32
  %15 = call i32 @T(i32 %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* @C_BLANK, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = call i64 @Check_Char(%struct.TYPE_10__* %16, %struct.TYPE_11__* %17, i32 %20, i32 %22, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %74

29:                                               ; preds = %1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = icmp ne i32 %32, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = call i64 @Is_There_Room_For_A_Line(%struct.TYPE_10__* %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %38, %29
  %43 = phi i1 [ false, %29 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %6, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = call i32 @Single_Line_Field(%struct.TYPE_11__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %73, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = call i64 @Growable(%struct.TYPE_11__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = call i32 @Field_Grown(%struct.TYPE_11__* %59, i32 1)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @E_SYSTEM_ERROR, align 4
  store i32 %63, i32* %5, align 4
  br label %72

64:                                               ; preds = %58, %55
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @winsertln(i32 %69)
  %71 = load i32, i32* @E_OK, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %64, %62
  br label %73

73:                                               ; preds = %72, %51, %42
  br label %74

74:                                               ; preds = %73, %1
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @returnCode(i32 %75)
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @T(i32) #1

declare dso_local i32 @T_CALLED(i8*) #1

declare dso_local i64 @Check_Char(%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i64 @Is_There_Room_For_A_Line(%struct.TYPE_10__*) #1

declare dso_local i32 @Single_Line_Field(%struct.TYPE_11__*) #1

declare dso_local i64 @Growable(%struct.TYPE_11__*) #1

declare dso_local i32 @Field_Grown(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @winsertln(i32) #1

declare dso_local i32 @returnCode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
