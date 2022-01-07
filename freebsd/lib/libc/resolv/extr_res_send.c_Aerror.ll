; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_send.c_Aerror.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_send.c_Aerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@errno = common dso_local global i32 0, align 4
@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_MAXSERV = common dso_local global i32 0, align 4
@RES_DEBUG = common dso_local global i32 0, align 4
@niflags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"res_send: %s ([%s].%s): %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i8*, i32, %struct.sockaddr*, i32)* @Aerror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Aerror(%struct.TYPE_3__* %0, i32* %1, i8* %2, i32 %3, %struct.sockaddr* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* @errno, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* @NI_MAXHOST, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load i32, i32* @NI_MAXSERV, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %16, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RES_DEBUG, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %6
  %32 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = trunc i64 %19 to i32
  %35 = trunc i64 %23 to i32
  %36 = load i32, i32* @niflags, align 4
  %37 = call i64 @getnameinfo(%struct.sockaddr* %32, i32 %33, i8* %21, i32 %34, i8* %24, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %31
  %40 = sub i64 %19, 1
  %41 = trunc i64 %40 to i32
  %42 = call i32 @strncpy(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = sub i64 %19, 1
  %44 = getelementptr inbounds i8, i8* %21, i64 %43
  store i8 0, i8* %44, align 1
  %45 = sub i64 %23, 1
  %46 = trunc i64 %45 to i32
  %47 = call i32 @strncpy(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = sub i64 %23, 1
  %49 = getelementptr inbounds i8, i8* %24, i64 %48
  store i8 0, i8* %49, align 1
  br label %50

50:                                               ; preds = %39, %31
  %51 = load i32*, i32** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i8* @strerror(i32 %53)
  %55 = call i32 @fprintf(i32* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %52, i8* %21, i8* %24, i8* %54)
  br label %56

56:                                               ; preds = %50, %6
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* @errno, align 4
  %58 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %58)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i8* @strerror(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
