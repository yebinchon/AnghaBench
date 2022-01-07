; ModuleID = '/home/carl/AnghaBench/freebsd/secure/lib/libcrypt/extr_crypt-des.c_des_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/secure/lib/libcrypt/extr_crypt-des.c_des_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i8** }

@des_initialised = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @des_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_cipher(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %union.anon, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @des_initialised, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = call i32 (...) @des_init()
  br label %19

19:                                               ; preds = %17, %4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @setup_salt(i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast %union.anon* %14 to i8**
  store i8* %22, i8** %23, align 8
  %24 = bitcast %union.anon* %14 to i8***
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %26, i8*** %24, align 8
  %27 = load i8*, i8** %25, align 8
  %28 = call i8* @ntohl(i8* %27)
  store i8* %28, i8** %11, align 8
  %29 = bitcast %union.anon* %14 to i8***
  %30 = load i8**, i8*** %29, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @ntohl(i8* %31)
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @do_des(i8* %33, i8* %34, i8** %9, i8** %10, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = bitcast %union.anon* %14 to i8**
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i8* @htonl(i8* %39)
  %41 = bitcast %union.anon* %14 to i8***
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %43, i8*** %41, align 8
  store i8* %40, i8** %42, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i8* @htonl(i8* %44)
  %46 = bitcast %union.anon* %14 to i8***
  %47 = load i8**, i8*** %46, align 8
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %13, align 4
  ret i32 %48
}

declare dso_local i32 @des_init(...) #1

declare dso_local i32 @setup_salt(i32) #1

declare dso_local i8* @ntohl(i8*) #1

declare dso_local i32 @do_des(i8*, i8*, i8**, i8**, i32) #1

declare dso_local i8* @htonl(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
