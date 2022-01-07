; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_netname.c_host2netname.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_netname.c_host2netname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXNETNAMELEN = common dso_local global i64 0, align 8
@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@OPSYS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s.%s@%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host2netname(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i64, i64* @MAXNETNAMELEN, align 8
  %13 = add nsw i64 %12, 1
  %14 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = call i64 @__rpc_get_default_domain(i8** %8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %53

25:                                               ; preds = %21
  %26 = load i8*, i8** %8, align 8
  store i8* %26, i8** %7, align 8
  br label %27

27:                                               ; preds = %25, %3
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = trunc i64 %16 to i32
  %32 = call i32 @gethostname(i8* %18, i32 %31)
  store i8* %18, i8** %6, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = add nsw i64 %35, 1
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = add nsw i64 %36, %38
  %40 = add nsw i64 %39, 1
  %41 = load i8*, i8** @OPSYS, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = add nsw i64 %40, %42
  %44 = load i64, i64* @MAXNETNAMELEN, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %53

47:                                               ; preds = %33
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** @OPSYS, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @sprintf(i8* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %50, i8* %51)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %53

53:                                               ; preds = %47, %46, %24
  %54 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @__rpc_get_default_domain(i8**) #2

declare dso_local i32 @gethostname(i8*, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
