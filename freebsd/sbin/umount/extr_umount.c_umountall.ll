; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/umount/extr_umount.c_umountall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/umount/extr_umount.c_umountall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvfsconf = type { i32 }
%struct.fstab = type { i32, i32, i32 }

@umountall.firstcall = internal global i32 1, align 4
@.str = private unnamed_addr constant [22 x i8] c"fstab reading failure\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@FSTAB_RW = common dso_local global i8* null, align 8
@FSTAB_RO = common dso_local global i8* null, align 8
@FSTAB_RQ = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @umountall(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct.xvfsconf, align 4
  %5 = alloca %struct.fstab*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  %8 = call %struct.fstab* (...) @getfsent()
  store %struct.fstab* %8, %struct.fstab** %5, align 8
  %9 = icmp ne %struct.fstab* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* @umountall.firstcall, align 4
  br label %18

11:                                               ; preds = %1
  %12 = load i32, i32* @umountall.firstcall, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %98

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %17, %10
  br label %19

19:                                               ; preds = %94, %18
  %20 = load %struct.fstab*, %struct.fstab** %5, align 8
  %21 = getelementptr inbounds %struct.fstab, %struct.fstab* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strcmp(i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %94

26:                                               ; preds = %19
  %27 = load %struct.fstab*, %struct.fstab** %5, align 8
  %28 = getelementptr inbounds %struct.fstab, %struct.fstab* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** @FSTAB_RW, align 8
  %31 = call i64 @strcmp(i32 %29, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %26
  %34 = load %struct.fstab*, %struct.fstab** %5, align 8
  %35 = getelementptr inbounds %struct.fstab, %struct.fstab* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** @FSTAB_RO, align 8
  %38 = call i64 @strcmp(i32 %36, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.fstab*, %struct.fstab** %5, align 8
  %42 = getelementptr inbounds %struct.fstab, %struct.fstab* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** @FSTAB_RQ, align 8
  %45 = call i64 @strcmp(i32 %43, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %94

48:                                               ; preds = %40, %33, %26
  %49 = load %struct.fstab*, %struct.fstab** %5, align 8
  %50 = getelementptr inbounds %struct.fstab, %struct.fstab* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @getvfsbyname(i32 %51, %struct.xvfsconf* %4)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %94

55:                                               ; preds = %48
  %56 = load %struct.fstab*, %struct.fstab** %5, align 8
  %57 = getelementptr inbounds %struct.fstab, %struct.fstab* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i8**, i8*** %3, align 8
  %60 = call i64 @checkvfsname(i32 %58, i8** %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %94

63:                                               ; preds = %55
  %64 = load %struct.fstab*, %struct.fstab** %5, align 8
  %65 = getelementptr inbounds %struct.fstab, %struct.fstab* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @strlen(i32 %66)
  %68 = add i64 %67, 1
  %69 = call i8* @malloc(i64 %68)
  store i8* %69, i8** %7, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %63
  %74 = load i8*, i8** %7, align 8
  %75 = load %struct.fstab*, %struct.fstab** %5, align 8
  %76 = getelementptr inbounds %struct.fstab, %struct.fstab* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @strcpy(i8* %74, i32 %77)
  %79 = load i8**, i8*** %3, align 8
  %80 = call i32 @umountall(i8** %79)
  store i32 %80, i32* %6, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = load i8**, i8*** %3, align 8
  %83 = call i64 @checkname(i8* %81, i8** %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %73
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br label %88

88:                                               ; preds = %85, %73
  %89 = phi i1 [ true, %73 ], [ %87, %85 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %6, align 4
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %98

94:                                               ; preds = %62, %54, %47, %25
  %95 = call %struct.fstab* (...) @getfsent()
  store %struct.fstab* %95, %struct.fstab** %5, align 8
  %96 = icmp ne %struct.fstab* %95, null
  br i1 %96, label %19, label %97

97:                                               ; preds = %94
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %88, %16
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.fstab* @getfsent(...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @getvfsbyname(i32, %struct.xvfsconf*) #1

declare dso_local i64 @checkvfsname(i32, i8**) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i64 @checkname(i8*, i8**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
