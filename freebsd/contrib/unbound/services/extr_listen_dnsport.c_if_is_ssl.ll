; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_if_is_ssl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_if_is_ssl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_strlist = type { i8*, %struct.config_strlist* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, %struct.config_strlist*)* @if_is_ssl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_is_ssl(i8* %0, i8* %1, i32 %2, %struct.config_strlist* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.config_strlist*, align 8
  %10 = alloca %struct.config_strlist*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.config_strlist* %3, %struct.config_strlist** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 64)
  store i8* %13, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @atoi(i8* %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %68

22:                                               ; preds = %16, %4
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i8*, i8** %11, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i32 @atoi(i8* %27)
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %68

32:                                               ; preds = %25, %22
  %33 = load %struct.config_strlist*, %struct.config_strlist** %9, align 8
  store %struct.config_strlist* %33, %struct.config_strlist** %10, align 8
  br label %34

34:                                               ; preds = %63, %32
  %35 = load %struct.config_strlist*, %struct.config_strlist** %10, align 8
  %36 = icmp ne %struct.config_strlist* %35, null
  br i1 %36, label %37, label %67

37:                                               ; preds = %34
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = call i32 @atoi(i8* %42)
  %44 = load %struct.config_strlist*, %struct.config_strlist** %10, align 8
  %45 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @atoi(i8* %46)
  %48 = icmp eq i32 %43, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %68

50:                                               ; preds = %40, %37
  %51 = load i8*, i8** %11, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @atoi(i8* %54)
  %56 = load %struct.config_strlist*, %struct.config_strlist** %10, align 8
  %57 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @atoi(i8* %58)
  %60 = icmp eq i32 %55, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 1, i32* %5, align 4
  br label %68

62:                                               ; preds = %53, %50
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.config_strlist*, %struct.config_strlist** %10, align 8
  %65 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %64, i32 0, i32 1
  %66 = load %struct.config_strlist*, %struct.config_strlist** %65, align 8
  store %struct.config_strlist* %66, %struct.config_strlist** %10, align 8
  br label %34

67:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %61, %49, %31, %21
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
