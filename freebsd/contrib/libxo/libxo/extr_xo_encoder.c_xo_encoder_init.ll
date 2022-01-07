; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_xo_encoder.c_xo_encoder_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_xo_encoder.c_xo_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"invalid encoder name: %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"encoder not founde: %s\00", align 1
@XO_OP_CREATE = common dso_local global i32 0, align 4
@XO_OP_OPTIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xo_encoder_init(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = call i32 (...) @xo_encoder_setup()
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 58)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strlen(i8* %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %20, 1
  %22 = call i8* @alloca(i64 %21)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @memcpy(i8* %23, i8* %24, i64 %25)
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8 0, i8* %29, align 1
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = getelementptr inbounds i8, i8* %30, i64 %35
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %9, align 8
  store i8 0, i8* %37, align 1
  %39 = load i8*, i8** %9, align 8
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %8, align 8
  store i8* %40, i8** %5, align 8
  br label %41

41:                                               ; preds = %17, %2
  %42 = load i8*, i8** %5, align 8
  %43 = call i8* @strchr(i8* %42, i8 signext 47)
  %44 = icmp ne i8* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %5, align 8
  %47 = call i8* @strchr(i8* %46, i8 signext 58)
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %45, %41
  %50 = load i32*, i32** %4, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @xo_failure(i32* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %51)
  store i32 -1, i32* %3, align 4
  br label %91

53:                                               ; preds = %45
  %54 = load i8*, i8** %5, align 8
  %55 = call %struct.TYPE_4__* @xo_encoder_find(i8* %54)
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %10, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = icmp eq %struct.TYPE_4__* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load i8*, i8** %5, align 8
  %60 = call %struct.TYPE_4__* @xo_encoder_discover(i8* %59)
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %10, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %62 = icmp eq %struct.TYPE_4__* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32*, i32** %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @xo_failure(i32* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  store i32 -1, i32* %3, align 4
  br label %91

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %53
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @xo_set_encoder(i32* %69, i32 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* @XO_OP_CREATE, align 4
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @xo_encoder_handle(i32* %74, i32 %75, i8* %76, i8* null, i32 0)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %68
  %81 = load i8*, i8** %6, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* @XO_OP_OPTIONS, align 4
  %86 = load i8*, i8** %5, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @xo_encoder_handle(i32* %84, i32 %85, i8* %86, i8* %87, i32 0)
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %83, %80, %68
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %63, %49
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @xo_encoder_setup(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @xo_failure(i32*, i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @xo_encoder_find(i8*) #1

declare dso_local %struct.TYPE_4__* @xo_encoder_discover(i8*) #1

declare dso_local i32 @xo_set_encoder(i32*, i32) #1

declare dso_local i32 @xo_encoder_handle(i32*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
