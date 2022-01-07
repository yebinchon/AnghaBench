; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_arc4random.c_arc4_seed_urandom_helper_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_arc4random.c_arc4_seed_urandom_helper_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADD_ENTROPY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@arc4_seeded_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @arc4_seed_urandom_helper_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc4_seed_urandom_helper_(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @ADD_ENTROPY, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = call i32 @evutil_open_closeonexec_(i8* %13, i32 %14, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %33

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = trunc i64 %10 to i32
  %22 = call i64 @read_all(i32 %20, i8* %12, i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @close(i32 %23)
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, %10
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %33

28:                                               ; preds = %19
  %29 = trunc i64 %10 to i32
  %30 = call i32 @arc4_addrandom(i8* %12, i32 %29)
  %31 = trunc i64 %10 to i32
  %32 = call i32 @evutil_memclear_(i8* %12, i32 %31)
  store i32 1, i32* @arc4_seeded_ok, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %33

33:                                               ; preds = %28, %27, %18
  %34 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %34)
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @evutil_open_closeonexec_(i8*, i32, i32) #2

declare dso_local i64 @read_all(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @arc4_addrandom(i8*, i32) #2

declare dso_local i32 @evutil_memclear_(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
