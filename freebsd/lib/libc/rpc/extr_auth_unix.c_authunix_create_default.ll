; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_unix.c_authunix_create_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_unix.c_authunix_create_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@_SC_NGROUPS_MAX = common dso_local global i32 0, align 4
@NGRPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @authunix_create_default() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @_SC_NGROUPS_MAX, align 4
  %17 = call i32 @sysconf(i32 %16)
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = mul i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32* @malloc(i32 %22)
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %0
  store i32* null, i32** %1, align 8
  store i32 1, i32* %10, align 4
  br label %59

27:                                               ; preds = %0
  %28 = trunc i64 %13 to i32
  %29 = call i32 @gethostname(i8* %15, i32 %28)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (...) @abort() #4
  unreachable

33:                                               ; preds = %27
  %34 = sub i64 %13, 1
  %35 = getelementptr inbounds i8, i8* %15, i64 %34
  store i8 0, i8* %35, align 1
  %36 = call i32 (...) @geteuid()
  store i32 %36, i32* %7, align 4
  %37 = call i32 (...) @getegid()
  store i32 %37, i32* %8, align 4
  %38 = load i64, i64* %4, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @getgroups(i64 %38, i32* %39)
  store i32 %40, i32* %3, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = call i32 (...) @abort() #4
  unreachable

44:                                               ; preds = %33
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @NGRPS, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @NGRPS, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = call i32* @authunix_create(i8* %15, i32 %51, i32 %52, i32 %53, i32* %54)
  store i32* %55, i32** %2, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @free(i32* %56)
  %58 = load i32*, i32** %2, align 8
  store i32* %58, i32** %1, align 8
  store i32 1, i32* %10, align 4
  br label %59

59:                                               ; preds = %50, %26
  %60 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32*, i32** %1, align 8
  ret i32* %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sysconf(i32) #2

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @gethostname(i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i32 @geteuid(...) #2

declare dso_local i32 @getegid(...) #2

declare dso_local i32 @getgroups(i64, i32*) #2

declare dso_local i32* @authunix_create(i8*, i32, i32, i32, i32*) #2

declare dso_local i32 @free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
