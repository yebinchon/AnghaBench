; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditfilterd/extr_auditfilterd_conf.c_auditfilterd_conf_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditfilterd/extr_auditfilterd_conf.c_auditfilterd_conf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auditfilter_module_list = type { i32 }
%struct.auditfilter_module = type { i32 }

@LINE_MAX = common dso_local global i32 0, align 4
@am_list = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.auditfilter_module_list*)* @auditfilterd_conf_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auditfilterd_conf_read(i8* %0, i32* %1, %struct.auditfilter_module_list* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.auditfilter_module_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.auditfilter_module*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.auditfilter_module_list* %2, %struct.auditfilter_module_list** %7, align 8
  %15 = load i32, i32* @LINE_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %58, %46, %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @feof(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @ferror(i32* %24)
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %23, %19
  %29 = phi i1 [ false, %19 ], [ %27, %23 ]
  br i1 %29, label %30, label %63

30:                                               ; preds = %28
  %31 = load i32, i32* @LINE_MAX, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i32* @fgets(i8* %18, i32 %31, i32* %32)
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %63

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  %39 = getelementptr inbounds i8, i8* %18, i64 0
  %40 = load i8, i8* %39, align 16
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 35
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = call i32 @strlen(i8* %18)
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %36
  br label %19

47:                                               ; preds = %43
  %48 = call i32 @strlen(i8* %18)
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %18, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call %struct.auditfilter_module* @auditfilter_module_parse(i8* %52, i32 %53, i8* %18)
  store %struct.auditfilter_module* %54, %struct.auditfilter_module** %11, align 8
  %55 = load %struct.auditfilter_module*, %struct.auditfilter_module** %11, align 8
  %56 = icmp eq %struct.auditfilter_module* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 1, i32* %10, align 4
  br label %63

58:                                               ; preds = %47
  %59 = load %struct.auditfilter_module_list*, %struct.auditfilter_module_list** %7, align 8
  %60 = load %struct.auditfilter_module*, %struct.auditfilter_module** %11, align 8
  %61 = load i32, i32* @am_list, align 4
  %62 = call i32 @TAILQ_INSERT_HEAD(%struct.auditfilter_module_list* %59, %struct.auditfilter_module* %60, i32 %61)
  br label %19

63:                                               ; preds = %57, %35, %28
  %64 = load i32*, i32** %6, align 8
  %65 = call i64 @ferror(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* @errno, align 4
  store i32 %68, i32* %8, align 4
  %69 = load %struct.auditfilter_module_list*, %struct.auditfilter_module_list** %7, align 8
  %70 = call i32 @auditfilter_module_list_free(%struct.auditfilter_module_list* %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %80

72:                                               ; preds = %63
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.auditfilter_module_list*, %struct.auditfilter_module_list** %7, align 8
  %77 = call i32 @auditfilter_module_list_free(%struct.auditfilter_module_list* %76)
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %80

79:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %80

80:                                               ; preds = %79, %75, %67
  %81 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @feof(i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local %struct.auditfilter_module* @auditfilter_module_parse(i8*, i32, i8*) #2

declare dso_local i32 @TAILQ_INSERT_HEAD(%struct.auditfilter_module_list*, %struct.auditfilter_module*, i32) #2

declare dso_local i32 @auditfilter_module_list_free(%struct.auditfilter_module_list*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
