; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_methods.c_eap_get_names.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_methods.c_eap_get_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_method = type { i32, %struct.eap_method* }

@eap_methods = common dso_local global %struct.eap_method* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @eap_get_names(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %68

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %7, align 8
  %18 = load %struct.eap_method*, %struct.eap_method** @eap_methods, align 8
  store %struct.eap_method* %18, %struct.eap_method** %8, align 8
  br label %19

19:                                               ; preds = %54, %13
  %20 = load %struct.eap_method*, %struct.eap_method** %8, align 8
  %21 = icmp ne %struct.eap_method* %20, null
  br i1 %21, label %22, label %58

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = load %struct.eap_method*, %struct.eap_method** %8, align 8
  %31 = load %struct.eap_method*, %struct.eap_method** @eap_methods, align 8
  %32 = icmp eq %struct.eap_method* %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %35 = load %struct.eap_method*, %struct.eap_method** %8, align 8
  %36 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @os_snprintf(i8* %23, i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @os_snprintf_error(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %22
  br label %58

49:                                               ; preds = %22
  %50 = load i32, i32* %9, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %6, align 8
  br label %54

54:                                               ; preds = %49
  %55 = load %struct.eap_method*, %struct.eap_method** %8, align 8
  %56 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %55, i32 0, i32 1
  %57 = load %struct.eap_method*, %struct.eap_method** %56, align 8
  store %struct.eap_method* %57, %struct.eap_method** %8, align 8
  br label %19

58:                                               ; preds = %48, %19
  %59 = load i8*, i8** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = sub i64 %60, 1
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 0, i8* %62, align 1
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  store i64 %67, i64* %3, align 8
  br label %68

68:                                               ; preds = %58, %12
  %69 = load i64, i64* %3, align 8
  ret i64 %69
}

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
