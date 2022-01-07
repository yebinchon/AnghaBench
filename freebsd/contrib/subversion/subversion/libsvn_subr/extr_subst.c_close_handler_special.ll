; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_close_handler_special.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_close_handler_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.special_stream_baton = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @close_handler_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_handler_special(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.special_stream_baton*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.special_stream_baton*
  store %struct.special_stream_baton* %6, %struct.special_stream_baton** %3, align 8
  %7 = load %struct.special_stream_baton*, %struct.special_stream_baton** %3, align 8
  %8 = getelementptr inbounds %struct.special_stream_baton, %struct.special_stream_baton* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.special_stream_baton*, %struct.special_stream_baton** %3, align 8
  %15 = getelementptr inbounds %struct.special_stream_baton, %struct.special_stream_baton* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.special_stream_baton*, %struct.special_stream_baton** %3, align 8
  %18 = getelementptr inbounds %struct.special_stream_baton, %struct.special_stream_baton* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32* @svn_stream_from_stringbuf(%struct.TYPE_2__* %16, i32 %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.special_stream_baton*, %struct.special_stream_baton** %3, align 8
  %23 = getelementptr inbounds %struct.special_stream_baton, %struct.special_stream_baton* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.special_stream_baton*, %struct.special_stream_baton** %3, align 8
  %26 = getelementptr inbounds %struct.special_stream_baton, %struct.special_stream_baton* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @create_special_file_from_stream(i32* %21, i32 %24, i32 %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  br label %30

30:                                               ; preds = %13, %1
  %31 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %31
}

declare dso_local i32* @svn_stream_from_stringbuf(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @create_special_file_from_stream(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
