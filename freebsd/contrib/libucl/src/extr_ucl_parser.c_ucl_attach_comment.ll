; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_attach_comment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_attach_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@UCL_OBJECT_INHERITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucl_parser*, i32*, i32)* @ucl_attach_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucl_attach_comment(%struct.ucl_parser* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ucl_parser*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ucl_parser* %0, %struct.ucl_parser** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %8 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %3
  %12 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %13 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %16 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = bitcast i32** %5 to i8*
  %19 = call i32 @ucl_object_insert_key(i32 %14, %struct.TYPE_2__* %17, i8* %18, i32 8, i32 1)
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %11
  %23 = load i32, i32* @UCL_OBJECT_INHERITED, align 4
  %24 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %25 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %23
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %22, %11
  %31 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %32 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %31, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %32, align 8
  br label %33

33:                                               ; preds = %30, %3
  ret void
}

declare dso_local i32 @ucl_object_insert_key(i32, %struct.TYPE_2__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
