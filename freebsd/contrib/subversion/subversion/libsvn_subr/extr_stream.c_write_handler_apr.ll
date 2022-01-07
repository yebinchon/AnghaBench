; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_write_handler_apr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_write_handler_apr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baton_apr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @write_handler_apr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_handler_apr(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.baton_apr*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.baton_apr*
  store %struct.baton_apr* %10, %struct.baton_apr** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = load %struct.baton_apr*, %struct.baton_apr** %7, align 8
  %18 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.baton_apr*, %struct.baton_apr** %7, align 8
  %21 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @svn_io_file_putc(i8 signext %16, i32 %19, i32 %22)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load i32*, i32** %6, align 8
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %26, %14
  br label %41

29:                                               ; preds = %3
  %30 = load %struct.baton_apr*, %struct.baton_apr** %7, align 8
  %31 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.baton_apr*, %struct.baton_apr** %7, align 8
  %38 = getelementptr inbounds %struct.baton_apr, %struct.baton_apr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @svn_io_file_write_full(i32 %32, i8* %33, i32 %35, i32* %36, i32 %39)
  store i32* %40, i32** %8, align 8
  br label %41

41:                                               ; preds = %29, %28
  %42 = load i32*, i32** %8, align 8
  %43 = call i32* @svn_error_trace(i32* %42)
  ret i32* %43
}

declare dso_local i32* @svn_io_file_putc(i8 signext, i32, i32) #1

declare dso_local i32* @svn_io_file_write_full(i32, i8*, i32, i32*, i32) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
