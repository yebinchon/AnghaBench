; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_log_receiver_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_log_receiver_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32* }
%struct.log_baton = type { i32, i32* (i32, %struct.TYPE_8__*, i32*)*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_8__*, i32*)* @log_receiver_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @log_receiver_wrapper(i8* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.log_baton*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.log_baton*
  store %struct.log_baton* %10, %struct.log_baton** %7, align 8
  %11 = load %struct.log_baton*, %struct.log_baton** %7, align 8
  %12 = getelementptr inbounds %struct.log_baton, %struct.log_baton* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %8, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = icmp ne i32 (i32)* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32 (i32)*, i32 (i32)** %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %25(i32 %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  br label %31

31:                                               ; preds = %20, %3
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @apr_hash_count(i32* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %42, %36, %31
  %48 = load %struct.log_baton*, %struct.log_baton** %7, align 8
  %49 = getelementptr inbounds %struct.log_baton, %struct.log_baton* %48, i32 0, i32 1
  %50 = load i32* (i32, %struct.TYPE_8__*, i32*)*, i32* (i32, %struct.TYPE_8__*, i32*)** %49, align 8
  %51 = load %struct.log_baton*, %struct.log_baton** %7, align 8
  %52 = getelementptr inbounds %struct.log_baton, %struct.log_baton* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32* %50(i32 %53, %struct.TYPE_8__* %54, i32* %55)
  ret i32* %56
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i64 @apr_hash_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
