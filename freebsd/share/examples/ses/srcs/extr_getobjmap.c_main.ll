; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/ses/srcs/extr_getobjmap.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/ses/srcs/extr_getobjmap.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@SESIOC_GETNOBJ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"SESIOC_GETNOBJ\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s: %d objects\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@SESIOC_GETOBJMAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"SESIOC_GETOBJMAP\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c" Object %d: ID 0x%x Type '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %10

10:                                               ; preds = %92, %63, %52, %44, %32, %22, %2
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i32 1
  store i8** %12, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %97

15:                                               ; preds = %10
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = call i32 @open(i8* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @perror(i8* %24)
  br label %10

26:                                               ; preds = %15
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @SESIOC_GETNOBJ, align 4
  %29 = ptrtoint i32* %7 to i32
  %30 = call i64 @ioctl(i32 %27, i32 %28, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @close(i32 %34)
  br label %10

36:                                               ; preds = %26
  %37 = load i32, i32* @stdout, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @close(i32 %45)
  br label %10

47:                                               ; preds = %36
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.TYPE_4__* @calloc(i32 %48, i32 16)
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %6, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = icmp eq %struct.TYPE_4__* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @close(i32 %54)
  br label %10

56:                                               ; preds = %47
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @SESIOC_GETOBJMAP, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = ptrtoint %struct.TYPE_4__* %59 to i32
  %61 = call i64 @ioctl(i32 %57, i32 %58, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @close(i32 %65)
  br label %10

67:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %89, %67
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %68
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i8* @geteltnm(i32 %86)
  %88 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %73, i32 %79, i8* %87)
  br label %89

89:                                               ; preds = %72
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %68

92:                                               ; preds = %68
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %94 = call i32 @free(%struct.TYPE_4__* %93)
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @close(i32 %95)
  br label %10

97:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @calloc(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i8*) #1

declare dso_local i8* @geteltnm(i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
