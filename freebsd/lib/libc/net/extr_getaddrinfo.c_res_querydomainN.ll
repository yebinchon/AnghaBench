; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_res_querydomainN.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_res_querydomainN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_target = type { i32 }
%struct.TYPE_5__ = type { i32 }

@MAXDNAME = common dso_local global i32 0, align 4
@NO_RECOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@RES_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.res_target*, %struct.TYPE_5__*)* @res_querydomainN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @res_querydomainN(i8* %0, i8* %1, %struct.res_target* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.res_target*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.res_target* %2, %struct.res_target** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  %16 = load i32, i32* @MAXDNAME, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %53

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @strlen(i8* %23)
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i32, i32* @MAXDNAME, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp uge i64 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %31 = load i32, i32* @NO_RECOVERY, align 4
  %32 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_5__* %30, i32 %31)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %79

33:                                               ; preds = %22
  %34 = load i64, i64* %13, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %13, align 8
  %39 = add i64 %38, -1
  store i64 %39, i64* %13, align 8
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 46
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %13, align 8
  %47 = call i32 @strncpy(i8* %19, i8* %45, i64 %46)
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds i8, i8* %19, i64 %48
  store i8 0, i8* %49, align 1
  br label %52

50:                                               ; preds = %36, %33
  %51 = load i8*, i8** %6, align 8
  store i8* %51, i8** %12, align 8
  br label %52

52:                                               ; preds = %50, %44
  br label %74

53:                                               ; preds = %4
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strlen(i8* %54)
  store i64 %55, i64* %13, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i64 @strlen(i8* %56)
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %14, align 8
  %60 = add i64 %58, %59
  %61 = add i64 %60, 1
  %62 = load i32, i32* @MAXDNAME, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp uge i64 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %53
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %67 = load i32, i32* @NO_RECOVERY, align 4
  %68 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_5__* %66, i32 %67)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %79

69:                                               ; preds = %53
  %70 = trunc i64 %17 to i32
  %71 = load i8*, i8** %6, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @snprintf(i8* %19, i32 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %71, i8* %72)
  br label %74

74:                                               ; preds = %69, %52
  %75 = load i8*, i8** %12, align 8
  %76 = load %struct.res_target*, %struct.res_target** %8, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %78 = call i32 @res_queryN(i8* %75, %struct.res_target* %76, %struct.TYPE_5__* %77)
  store i32 %78, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %79

79:                                               ; preds = %74, %65, %29
  %80 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @RES_SET_H_ERRNO(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @res_queryN(i8*, %struct.res_target*, %struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
