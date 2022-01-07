; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_quoprint.c_decode_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_quoprint.c_decode_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decode_baton = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i64*)* @decode_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @decode_data(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.decode_baton*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.decode_baton*
  store %struct.decode_baton* %13, %struct.decode_baton** %7, align 8
  %14 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %14, i32** %11, align 8
  %15 = load %struct.decode_baton*, %struct.decode_baton** %7, align 8
  %16 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @svn_pool_create(i32 %17)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call %struct.TYPE_4__* @svn_stringbuf_create_empty(i32* %19)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %9, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.decode_baton*, %struct.decode_baton** %7, align 8
  %26 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.decode_baton*, %struct.decode_baton** %7, align 8
  %29 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %28, i32 0, i32 1
  %30 = call i32 @decode_bytes(%struct.TYPE_4__* %21, i8* %22, i64 %24, i32 %27, i32* %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %3
  %37 = load %struct.decode_baton*, %struct.decode_baton** %7, align 8
  %38 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32* @svn_stream_write(i32 %39, i32 %42, i64* %10)
  store i32* %43, i32** %11, align 8
  br label %44

44:                                               ; preds = %36, %3
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @svn_pool_destroy(i32* %45)
  %47 = load i32*, i32** %11, align 8
  ret i32* %47
}

declare dso_local i32* @svn_pool_create(i32) #1

declare dso_local %struct.TYPE_4__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32 @decode_bytes(%struct.TYPE_4__*, i8*, i64, i32, i32*) #1

declare dso_local i32* @svn_stream_write(i32, i32, i64*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
