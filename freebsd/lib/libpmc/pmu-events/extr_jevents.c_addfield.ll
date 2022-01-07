; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/pmu-events/extr_jevents.c_addfield.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/pmu-events/extr_jevents.c_addfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**, i8*, i8*, %struct.TYPE_4__*)* @addfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addfield(i8* %0, i8** %1, i8* %2, i8* %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %10, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = add nsw i32 %16, 1
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = add nsw i32 %17, %19
  store i32 %20, i32* %11, align 4
  %21 = load i8**, i8*** %7, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i8**, i8*** %7, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strlen(i8* %26)
  br label %29

28:                                               ; preds = %5
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ 0, %28 ]
  store i32 %30, i32* %12, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %35 = call i32 @json_len(%struct.TYPE_4__* %34)
  br label %37

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i32 [ %35, %33 ], [ 0, %36 ]
  store i32 %38, i32* %13, align 4
  %39 = load i8**, i8*** %7, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = add i32 %41, %42
  %44 = load i32, i32* %13, align 4
  %45 = add i32 %43, %44
  %46 = call i8* @realloc(i8* %40, i32 %45)
  store i8* %46, i8** %14, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %37
  br label %81

50:                                               ; preds = %37
  %51 = load i8*, i8** %14, align 8
  %52 = load i8**, i8*** %7, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i8**, i8*** %7, align 8
  %57 = load i8*, i8** %56, align 8
  store i8 0, i8* %57, align 1
  br label %63

58:                                               ; preds = %50
  %59 = load i8**, i8*** %7, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @strcat(i8* %60, i8* %61)
  br label %63

63:                                               ; preds = %58, %55
  %64 = load i8**, i8*** %7, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @strcat(i8* %65, i8* %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %69 = icmp ne %struct.TYPE_4__* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load i8**, i8*** %7, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @strncat(i8* %72, i8* %78, i32 %79)
  br label %81

81:                                               ; preds = %49, %70, %63
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @json_len(%struct.TYPE_4__*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strncat(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
