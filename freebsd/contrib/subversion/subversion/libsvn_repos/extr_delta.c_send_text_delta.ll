; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_delta.c_send_text_delta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_delta.c_send_text_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i8*, i8*, i32*, i32* (i32*, i8*)*, i8**)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.context*, i8*, i8*, i32*, i32*)* @send_text_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @send_text_delta(%struct.context* %0, i8* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.context*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32* (i32*, i8*)*, align 8
  %13 = alloca i8*, align 8
  store %struct.context* %0, %struct.context** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.context*, %struct.context** %7, align 8
  %15 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i8*, i8*, i32*, i32* (i32*, i8*)*, i8**)*, i32 (i8*, i8*, i32*, i32* (i32*, i8*)*, i8**)** %17, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = bitcast i32* (i32*, i8*)** %12 to i32* (i32*, i8*)*
  %23 = call i32 %18(i8* %19, i8* %20, i32* %21, i32* (i32*, i8*)* %22, i8** %13)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load %struct.context*, %struct.context** %7, align 8
  %26 = getelementptr inbounds %struct.context, %struct.context* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %5
  %30 = load i32*, i32** %10, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32*, i32** %10, align 8
  %34 = load i32* (i32*, i8*)*, i32* (i32*, i8*)** %12, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32* @svn_txdelta_send_txstream(i32* %33, i32* (i32*, i8*)* %34, i8* %35, i32* %36)
  store i32* %37, i32** %6, align 8
  br label %42

38:                                               ; preds = %29, %5
  %39 = load i32* (i32*, i8*)*, i32* (i32*, i8*)** %12, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = call i32* %39(i32* null, i8* %40)
  store i32* %41, i32** %6, align 8
  br label %42

42:                                               ; preds = %38, %32
  %43 = load i32*, i32** %6, align 8
  ret i32* %43
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32* @svn_txdelta_send_txstream(i32*, i32* (i32*, i8*)*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
