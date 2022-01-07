; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_filegen.c_filegen_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_filegen.c_filegen_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i64, i64, i32* }
%struct.TYPE_6__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"configuring filegen:\0A\09dir:\09%s -> %s\0A\09fname:\09%s -> %s\0A\09type:\09%d -> %d\0A\09flag: %x -> %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @filegen_config(%struct.TYPE_7__* %0, i8* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strcmp(i8* %13, i8* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %5
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strcmp(i8* %20, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %129

39:                                               ; preds = %32, %26, %19, %5
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @valid_fileref(i8* %40, i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %129

45:                                               ; preds = %39
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* null, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @fclose(i32* %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 4
  store i32* null, i32** %56, align 8
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %11, align 4
  br label %60

58:                                               ; preds = %45
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %58, %50
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @DPRINTF(i32 3, i8* %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i64 @strcmp(i8* %81, i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %60
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @free(i8* %88)
  %90 = load i8*, i8** %7, align 8
  %91 = call i8* @estrdup(i8* %90)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %85, %60
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = call i64 @strcmp(i8* %97, i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %94
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @free(i8* %104)
  %106 = load i8*, i8** %8, align 8
  %107 = call i8* @estrdup(i8* %106)
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %101, %94
  %111 = load i64, i64* %9, align 8
  %112 = inttoptr i64 %111 to i8*
  %113 = ptrtoint i8* %112 to i64
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  %116 = load i64, i64* %10, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = ptrtoint i8* %117 to i64
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  store i64 %118, i64* %120, align 8
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %110
  %124 = call i32 @get_systime(%struct.TYPE_6__* %12)
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @filegen_setup(%struct.TYPE_7__* %125, i32 %127)
  br label %129

129:                                              ; preds = %38, %44, %123, %110
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @valid_fileref(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @get_systime(%struct.TYPE_6__*) #1

declare dso_local i32 @filegen_setup(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
