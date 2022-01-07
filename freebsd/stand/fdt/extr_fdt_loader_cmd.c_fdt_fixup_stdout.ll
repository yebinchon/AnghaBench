; ModuleID = '/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_fixup_stdout.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_fixup_stdout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i32 }

@fdtp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdt_fixup_stdout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fdt_property*, align 8
  %8 = alloca [10 x i8*], align 16
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %9, i64 %12
  %14 = getelementptr inbounds i8, i8* %13, i64 -1
  store i8* %14, i8** %3, align 8
  br label %15

15:                                               ; preds = %27, %1
  %16 = load i8*, i8** %3, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = icmp ugt i8* %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i8*, i8** %2, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 -1
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @isdigit(i8 signext %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi i1 [ false, %15 ], [ %24, %19 ]
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i8*, i8** %2, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 -1
  store i8* %29, i8** %2, align 8
  br label %15

30:                                               ; preds = %25
  %31 = load i8*, i8** %3, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %90

35:                                               ; preds = %30
  %36 = load i32, i32* @fdtp, align 4
  %37 = call i32 @fdt_path_offset(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %90

41:                                               ; preds = %35
  %42 = load i32, i32* @fdtp, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call %struct.fdt_property* @fdt_get_property(i32 %42, i32 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %4)
  store %struct.fdt_property* %44, %struct.fdt_property** %7, align 8
  %45 = load %struct.fdt_property*, %struct.fdt_property** %7, align 8
  %46 = icmp eq %struct.fdt_property* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.fdt_property*, %struct.fdt_property** %7, align 8
  %49 = icmp ne %struct.fdt_property* %48, null
  br i1 %49, label %50, label %90

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %90

53:                                               ; preds = %50, %41
  %54 = getelementptr inbounds [10 x i8*], [10 x i8*]* %8, i64 0, i64 0
  %55 = call i32 @bzero(i8** %54, i32 10)
  %56 = bitcast [10 x i8*]* %8 to i8*
  %57 = call i32 @strcpy(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = icmp sgt i32 %59, 3
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %90

62:                                               ; preds = %53
  %63 = getelementptr inbounds [10 x i8*], [10 x i8*]* %8, i64 0, i64 0
  %64 = bitcast i8** %63 to i8*
  %65 = getelementptr inbounds i8, i8* %64, i64 6
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @strncpy(i8* %65, i8* %66, i32 3)
  %68 = load i32, i32* @fdtp, align 4
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %8, i64 0, i64 0
  %70 = bitcast i8** %69 to i8*
  %71 = call i32 @fdt_path_offset(i32 %68, i8* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %90

75:                                               ; preds = %62
  %76 = load i32, i32* @fdtp, align 4
  %77 = load i32, i32* %5, align 4
  %78 = bitcast [10 x i8*]* %8 to i8***
  %79 = bitcast [10 x i8*]* %8 to i8*
  %80 = call i32 @strlen(i8* %79)
  %81 = add nsw i32 %80, 1
  %82 = call i32 @fdt_setprop(i32 %76, i32 %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8*** %78, i32 %81)
  %83 = load i32, i32* @fdtp, align 4
  %84 = load i32, i32* %5, align 4
  %85 = bitcast [10 x i8*]* %8 to i8***
  %86 = bitcast [10 x i8*]* %8 to i8*
  %87 = call i32 @strlen(i8* %86)
  %88 = add nsw i32 %87, 1
  %89 = call i32 @fdt_setprop(i32 %83, i32 %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8*** %85, i32 %88)
  br label %90

90:                                               ; preds = %34, %40, %61, %74, %75, %50, %47
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @fdt_path_offset(i32, i8*) #1

declare dso_local %struct.fdt_property* @fdt_get_property(i32, i32, i8*, i32*) #1

declare dso_local i32 @bzero(i8**, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @fdt_setprop(i32, i32, i8*, i8***, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
