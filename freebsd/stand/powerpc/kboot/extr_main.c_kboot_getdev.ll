; ModuleID = '/home/carl/AnghaBench/freebsd/stand/powerpc/kboot/extr_main.c_kboot_getdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/powerpc/kboot/extr_main.c_kboot_getdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devsw = type { i32 }
%struct.devdesc = type { i32, i64, %struct.devsw* }

@.str = private unnamed_addr constant [8 x i8] c"currdev\00", align 1
@devsw = common dso_local global %struct.devsw** null, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kboot_getdev(i8** %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.devsw*, align 8
  %12 = alloca %struct.devdesc*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 58)
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 58)
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %20, i8** %10, align 8
  br label %24

21:                                               ; preds = %3
  %22 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %10, align 8
  br label %24

24:                                               ; preds = %21, %16
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %45, %24
  %26 = load %struct.devsw**, %struct.devsw*** @devsw, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.devsw*, %struct.devsw** %26, i64 %28
  %30 = load %struct.devsw*, %struct.devsw** %29, align 8
  store %struct.devsw* %30, %struct.devsw** %11, align 8
  %31 = icmp ne %struct.devsw* %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %25
  %33 = load %struct.devsw*, %struct.devsw** %11, align 8
  %34 = getelementptr inbounds %struct.devsw, %struct.devsw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.devsw*, %struct.devsw** %11, align 8
  %38 = getelementptr inbounds %struct.devsw, %struct.devsw* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strlen(i32 %39)
  %41 = call i64 @strncmp(i32 %35, i8* %36, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %50

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %25

48:                                               ; preds = %25
  %49 = load i32, i32* @ENOENT, align 4
  store i32 %49, i32* %4, align 4
  br label %86

50:                                               ; preds = %43
  %51 = load i8**, i8*** %7, align 8
  %52 = icmp ne i8** %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8*, i8** %10, align 8
  %58 = load i8**, i8*** %7, align 8
  store i8* %57, i8** %58, align 8
  br label %68

59:                                               ; preds = %53, %50
  %60 = load i8**, i8*** %7, align 8
  %61 = icmp ne i8** %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i8*, i8** %6, align 8
  %64 = call i8* @strchr(i8* %63, i8 signext 58)
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8**, i8*** %7, align 8
  store i8* %65, i8** %66, align 8
  br label %67

67:                                               ; preds = %62, %59
  br label %68

68:                                               ; preds = %67, %56
  %69 = load i8**, i8*** %5, align 8
  %70 = icmp ne i8** %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = call %struct.devdesc* @malloc(i32 24)
  store %struct.devdesc* %72, %struct.devdesc** %12, align 8
  %73 = load %struct.devsw*, %struct.devsw** %11, align 8
  %74 = load %struct.devdesc*, %struct.devdesc** %12, align 8
  %75 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %74, i32 0, i32 2
  store %struct.devsw* %73, %struct.devsw** %75, align 8
  %76 = load %struct.devdesc*, %struct.devdesc** %12, align 8
  %77 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @strdup(i8* %78)
  %80 = load %struct.devdesc*, %struct.devdesc** %12, align 8
  %81 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.devdesc*, %struct.devdesc** %12, align 8
  %83 = bitcast %struct.devdesc* %82 to i8*
  %84 = load i8**, i8*** %5, align 8
  store i8* %83, i8** %84, align 8
  br label %85

85:                                               ; preds = %71, %68
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %48
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.devdesc* @malloc(i32) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
