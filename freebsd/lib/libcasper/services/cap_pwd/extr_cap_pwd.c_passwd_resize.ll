; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/extr_cap_pwd.c_passwd_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/extr_cap_pwd.c_passwd_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gbufsize = common dso_local global i32 0, align 4
@gbuffer = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @passwd_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @passwd_resize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @gbufsize, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 1024, i32* @gbufsize, align 4
  br label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @gbufsize, align 4
  %8 = mul nsw i32 %7, 2
  store i32 %8, i32* @gbufsize, align 4
  br label %9

9:                                                ; preds = %6, %5
  %10 = load i8*, i8** @gbuffer, align 8
  store i8* %10, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* @gbufsize, align 4
  %13 = call i8* @realloc(i8* %11, i32 %12)
  store i8* %13, i8** @gbuffer, align 8
  %14 = load i8*, i8** @gbuffer, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @free(i8* %17)
  store i32 0, i32* @gbufsize, align 4
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %1, align 4
  br label %24

20:                                               ; preds = %9
  %21 = load i8*, i8** @gbuffer, align 8
  %22 = load i32, i32* @gbufsize, align 4
  %23 = call i32 @memset(i8* %21, i32 0, i32 %22)
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
