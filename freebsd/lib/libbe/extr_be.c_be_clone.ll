; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.libbe_deep_clone = type { i8*, i8*, i32, i64, %struct.TYPE_7__* }

@BE_MAXPATHLEN = common dso_local global i32 0, align 4
@BE_ERR_UNKNOWN = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i8*, i32)* @be_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_clone(%struct.TYPE_7__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.libbe_deep_clone, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @BE_MAXPATHLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @be_validate_name(%struct.TYPE_7__* %22, i8* %23)
  store i32 %24, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @set_error(%struct.TYPE_7__* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %91

30:                                               ; preds = %4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @be_root_concat(%struct.TYPE_7__* %31, i8* %32, i8* %21)
  store i32 %33, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @set_error(%struct.TYPE_7__* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %91

39:                                               ; preds = %30
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = call i32 @be_validate_snap(%struct.TYPE_7__* %40, i8* %21)
  store i32 %41, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @set_error(%struct.TYPE_7__* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %91

47:                                               ; preds = %39
  %48 = call i8* @strdup(i8* %21)
  store i8* %48, i8** %13, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = load i32, i32* @BE_ERR_UNKNOWN, align 4
  %53 = call i32 @set_error(%struct.TYPE_7__* %51, i32 %52)
  store i32 %53, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %91

54:                                               ; preds = %47
  %55 = load i8*, i8** %13, align 8
  %56 = call i8* @strchr(i8* %55, i8 signext 64)
  store i8* %56, i8** %14, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = load i32, i32* @BE_ERR_UNKNOWN, align 4
  %64 = call i32 @set_error(%struct.TYPE_7__* %62, i32 %63)
  store i32 %64, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %91

65:                                               ; preds = %54
  %66 = load i8*, i8** %14, align 8
  store i8 0, i8* %66, align 1
  %67 = load i8*, i8** %14, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %14, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %16, i32 0, i32 4
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %70, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %16, i32 0, i32 0
  store i8* %71, i8** %72, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %16, i32 0, i32 1
  store i8* %73, i8** %74, align 8
  %75 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %16, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* %9, align 4
  %77 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %16, i32 0, i32 2
  store i32 %76, i32* %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %13, align 8
  %82 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %83 = call i32* @zfs_open(i32 %80, i8* %81, i32 %82)
  store i32* %83, i32** %15, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @be_clone_cb(i32* %84, %struct.libbe_deep_clone* %16)
  store i32 %85, i32* %10, align 4
  %86 = load i8*, i8** %13, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @set_error(%struct.TYPE_7__* %88, i32 %89)
  store i32 %90, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %91

91:                                               ; preds = %65, %59, %50, %43, %35, %26
  %92 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @be_validate_name(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @set_error(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @be_root_concat(%struct.TYPE_7__*, i8*, i8*) #2

declare dso_local i32 @be_validate_snap(%struct.TYPE_7__*, i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32* @zfs_open(i32, i8*, i32) #2

declare dso_local i32 @be_clone_cb(i32*, %struct.libbe_deep_clone*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
