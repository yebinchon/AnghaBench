; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libefivar/extr_efivar-dp-xlate.c_efivar_unix_path_to_device_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libefivar/extr_efivar-dp-xlate.c_efivar_unix_path_to_device_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmesh = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EDOOFUS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efivar_unix_path_to_device_path(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gmesh, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @EDOOFUS, align 4
  store i32 %17, i32* %3, align 4
  br label %81

18:                                               ; preds = %13
  %19 = call i64 @geom_gettree(%struct.gmesh* %9)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @errno, align 4
  store i32 %22, i32* %3, align 4
  br label %81

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = call i8* @strdup(i8* %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %76

29:                                               ; preds = %23
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %7, align 8
  br label %31

31:                                               ; preds = %43, %29
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 92
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i8*, i8** %7, align 8
  store i8 47, i8* %41, align 1
  br label %42

42:                                               ; preds = %40, %35
  br label %43

43:                                               ; preds = %42
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  br label %31

46:                                               ; preds = %31
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 47
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 47
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i8*, i8** %6, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @efipart_to_dp(%struct.gmesh* %9, i8* %59, i32* %60)
  store i32 %61, i32* %8, align 4
  br label %75

62:                                               ; preds = %52, %46
  %63 = load i8*, i8** %6, align 8
  %64 = call i64 @strchr(i8* %63, i8 signext 58)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i8*, i8** %6, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @dev_path_to_dp(%struct.gmesh* %9, i8* %67, i32* %68)
  store i32 %69, i32* %8, align 4
  br label %74

70:                                               ; preds = %62
  %71 = load i8*, i8** %6, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @path_to_dp(%struct.gmesh* %9, i8* %71, i32* %72)
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %70, %66
  br label %75

75:                                               ; preds = %74, %58
  br label %76

76:                                               ; preds = %75, %28
  %77 = call i32 @geom_deletetree(%struct.gmesh* %9)
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @free(i8* %78)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %76, %21, %16
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @geom_gettree(%struct.gmesh*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @efipart_to_dp(%struct.gmesh*, i8*, i32*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @dev_path_to_dp(%struct.gmesh*, i8*, i32*) #1

declare dso_local i32 @path_to_dp(%struct.gmesh*, i8*, i32*) #1

declare dso_local i32 @geom_deletetree(%struct.gmesh*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
