; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ata_getpwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ata_getpwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optarg = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"-%c password is too long\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"-%c password is missing\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"-%c password starts with '-' (generic arg?)\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"-%c password conflicts with existing password from -%c\00", align 1
@pwd_opt = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8)* @ata_getpwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_getpwd(i8* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %9 = load i8*, i8** @optarg, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8, i8* %7, align 1
  %17 = call i32 (i8*, i8, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8 signext %16)
  store i32 1, i32* %4, align 4
  br label %56

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8, i8* %7, align 1
  %23 = call i32 (i8*, i8, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8 signext %22)
  store i32 1, i32* %4, align 4
  br label %56

24:                                               ; preds = %18
  %25 = load i8*, i8** @optarg, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i8, i8* %7, align 1
  %32 = call i32 (i8*, i8, ...) @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8 signext %31)
  store i32 1, i32* %4, align 4
  br label %56

33:                                               ; preds = %24
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i64 @strcmp(i8* %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8, i8* %7, align 1
  %44 = load i8, i8* @pwd_opt, align 1
  %45 = sext i8 %44 to i32
  %46 = call i32 (i8*, i8, ...) @warnx(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8 signext %43, i32 %45)
  store i32 1, i32* %4, align 4
  br label %56

47:                                               ; preds = %37, %33
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** @optarg, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @strncpy(i8* %51, i8* %52, i32 %53)
  %55 = load i8, i8* %7, align 1
  store i8 %55, i8* @pwd_opt, align 1
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %50, %42, %30, %21, %15
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @warnx(i8*, i8 signext, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
