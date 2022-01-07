; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/VIQR/extr_citrus_viqr.c_mnemonic_append_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/VIQR/extr_citrus_viqr.c_mnemonic_append_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, i32)* @mnemonic_append_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mnemonic_append_child(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %7, align 8
  %14 = load i8, i8* %12, align 1
  %15 = zext i8 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %5, align 4
  br label %85

20:                                               ; preds = %4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %11, align 4
  %24 = call %struct.TYPE_7__* @mnemonic_list_find(i32* %22, i32 %23)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %10, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = icmp eq %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %20
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call %struct.TYPE_7__* @mnemonic_create(%struct.TYPE_7__* %28, i32 %29, i32 %30)
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %10, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %33 = icmp eq %struct.TYPE_7__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %5, align 4
  br label %85

36:                                               ; preds = %27
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %40 = load i32, i32* @entry, align 4
  %41 = call i32 @TAILQ_INSERT_TAIL(i32* %38, %struct.TYPE_7__* %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %20
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  br label %44

44:                                               ; preds = %73, %42
  %45 = load i8*, i8** %7, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  store i32 %47, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %44
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %11, align 4
  %53 = call %struct.TYPE_7__* @mnemonic_list_find(i32* %51, i32 %52)
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %10, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %55 = icmp eq %struct.TYPE_7__* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %49
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call %struct.TYPE_7__* @mnemonic_create(%struct.TYPE_7__* %57, i32 %58, i32 %59)
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %10, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = icmp eq %struct.TYPE_7__* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @ENOMEM, align 4
  store i32 %64, i32* %5, align 4
  br label %85

65:                                               ; preds = %56
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %69 = load i32, i32* @entry, align 4
  %70 = call i32 @TAILQ_INSERT_TAIL(i32* %67, %struct.TYPE_7__* %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %49
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %6, align 8
  br label %73

73:                                               ; preds = %71
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %7, align 8
  br label %44

76:                                               ; preds = %44
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %78 = icmp eq %struct.TYPE_7__* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* @EINVAL, align 4
  store i32 %80, i32* %5, align 4
  br label %85

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %81, %79, %63, %34, %18
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_7__* @mnemonic_list_find(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @mnemonic_create(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
