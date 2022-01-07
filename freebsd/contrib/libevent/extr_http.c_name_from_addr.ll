; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_name_from_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_name_from_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_MAXSERV = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@EAI_SYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr*, i32, i8**, i8**)* @name_from_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @name_from_addr(%struct.sockaddr* %0, i32 %1, i8** %2, i8** %3) #0 {
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %14 = load i32, i32* @NI_MAXHOST, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @NI_MAXSERV, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = trunc i64 %15 to i32
  %24 = trunc i64 %19 to i32
  %25 = load i32, i32* @NI_NUMERICHOST, align 4
  %26 = load i32, i32* @NI_NUMERICSERV, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @fake_getnameinfo(%struct.sockaddr* %21, i32 %22, i8* %17, i32 %23, i8* %20, i32 %24, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 1, i32* %13, align 4
  br label %37

32:                                               ; preds = %4
  %33 = call i8* @mm_strdup(i8* %17)
  %34 = load i8**, i8*** %7, align 8
  store i8* %33, i8** %34, align 8
  %35 = call i8* @mm_strdup(i8* %20)
  %36 = load i8**, i8*** %8, align 8
  store i8* %35, i8** %36, align 8
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %32, %31
  %38 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i32, i32* %13, align 4
  switch i32 %39, label %41 [
    i32 0, label %40
    i32 1, label %40
  ]

40:                                               ; preds = %37, %37
  ret void

41:                                               ; preds = %37
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fake_getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #2

declare dso_local i8* @mm_strdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
