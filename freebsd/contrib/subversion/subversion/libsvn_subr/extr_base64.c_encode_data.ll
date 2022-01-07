; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_base64.c_encode_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_base64.c_encode_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encode_baton = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i64*)* @encode_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @encode_data(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.encode_baton*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.encode_baton*
  store %struct.encode_baton* %12, %struct.encode_baton** %7, align 8
  %13 = load %struct.encode_baton*, %struct.encode_baton** %7, align 8
  %14 = getelementptr inbounds %struct.encode_baton, %struct.encode_baton* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_4__* @svn_stringbuf_create_empty(i32 %15)
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %8, align 8
  %17 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %17, i32** %10, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.encode_baton*, %struct.encode_baton** %7, align 8
  %23 = getelementptr inbounds %struct.encode_baton, %struct.encode_baton* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.encode_baton*, %struct.encode_baton** %7, align 8
  %26 = getelementptr inbounds %struct.encode_baton, %struct.encode_baton* %25, i32 0, i32 4
  %27 = load %struct.encode_baton*, %struct.encode_baton** %7, align 8
  %28 = getelementptr inbounds %struct.encode_baton, %struct.encode_baton* %27, i32 0, i32 3
  %29 = load %struct.encode_baton*, %struct.encode_baton** %7, align 8
  %30 = getelementptr inbounds %struct.encode_baton, %struct.encode_baton* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @encode_bytes(%struct.TYPE_4__* %18, i8* %19, i64 %21, i32 %24, i32* %26, i32* %28, i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %3
  %39 = load %struct.encode_baton*, %struct.encode_baton** %7, align 8
  %40 = getelementptr inbounds %struct.encode_baton, %struct.encode_baton* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32* @svn_stream_write(i32 %41, i32 %44, i64* %9)
  store i32* %45, i32** %10, align 8
  br label %46

46:                                               ; preds = %38, %3
  %47 = load %struct.encode_baton*, %struct.encode_baton** %7, align 8
  %48 = getelementptr inbounds %struct.encode_baton, %struct.encode_baton* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @svn_pool_clear(i32 %49)
  %51 = load i32*, i32** %10, align 8
  ret i32* %51
}

declare dso_local %struct.TYPE_4__* @svn_stringbuf_create_empty(i32) #1

declare dso_local i32 @encode_bytes(%struct.TYPE_4__*, i8*, i64, i32, i32*, i32*, i32) #1

declare dso_local i32* @svn_stream_write(i32, i32, i64*) #1

declare dso_local i32 @svn_pool_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
