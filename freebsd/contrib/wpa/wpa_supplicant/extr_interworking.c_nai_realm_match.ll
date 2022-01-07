; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_nai_realm_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_nai_realm_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nai_realm = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nai_realm*, i8*)* @nai_realm_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nai_realm_match(%struct.nai_realm* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nai_realm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.nai_realm* %0, %struct.nai_realm** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.nai_realm*, %struct.nai_realm** %4, align 8
  %11 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %70

18:                                               ; preds = %14
  %19 = load %struct.nai_realm*, %struct.nai_realm** %4, align 8
  %20 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @os_strchr(i8* %21, i8 signext 59)
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.nai_realm*, %struct.nai_realm** %4, align 8
  %26 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @os_strcasecmp(i8* %27, i8* %28)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %70

32:                                               ; preds = %18
  %33 = load %struct.nai_realm*, %struct.nai_realm** %4, align 8
  %34 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @os_strdup(i8* %35)
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %70

40:                                               ; preds = %32
  %41 = load i8*, i8** %6, align 8
  store i8* %41, i8** %7, align 8
  br label %42

42:                                               ; preds = %63, %40
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load i8*, i8** %7, align 8
  %48 = call i8* @os_strchr(i8* %47, i8 signext 59)
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i8*, i8** %8, align 8
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i64 @os_strcasecmp(i8* %54, i8* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 1, i32* %9, align 4
  br label %66

59:                                               ; preds = %53
  %60 = load i8*, i8** %8, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %66

63:                                               ; preds = %59
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %65, i8** %7, align 8
  br label %42

66:                                               ; preds = %62, %58, %42
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @os_free(i8* %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %39, %24, %17
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @os_strcasecmp(i8*, i8*) #1

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
