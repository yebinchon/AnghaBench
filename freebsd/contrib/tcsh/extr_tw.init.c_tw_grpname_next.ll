; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_grpname_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_grpname_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type opaque
%struct.group = type { i32 }

@pintr_disabled = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_grpname_next(%struct.Strbuf* %0, %struct.Strbuf* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Strbuf*, align 8
  %6 = alloca %struct.Strbuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.group*, align 8
  store %struct.Strbuf* %0, %struct.Strbuf** %5, align 8
  store %struct.Strbuf* %1, %struct.Strbuf** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = call i32 @USE(i32* %9)
  %11 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %12 = bitcast %struct.Strbuf* %11 to i32*
  %13 = call i32 @USE(i32* %12)
  %14 = load i32, i32* @pintr_disabled, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @pintr_disabled, align 4
  store i64 0, i64* @errno, align 8
  br label %16

16:                                               ; preds = %25, %3
  %17 = call %struct.group* (...) @getgrent()
  store %struct.group* %17, %struct.group** %8, align 8
  %18 = icmp eq %struct.group* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EINTR, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i1 [ false, %16 ], [ %22, %19 ]
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = call i32 (...) @handle_pending_signals()
  store i64 0, i64* @errno, align 8
  br label %16

27:                                               ; preds = %23
  %28 = call i32 @disabled_cleanup(i32* @pintr_disabled)
  %29 = load %struct.group*, %struct.group** %8, align 8
  %30 = icmp eq %struct.group* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %40

32:                                               ; preds = %27
  %33 = load %struct.Strbuf*, %struct.Strbuf** %5, align 8
  %34 = bitcast %struct.Strbuf* %33 to i32*
  %35 = load %struct.group*, %struct.group** %8, align 8
  %36 = getelementptr inbounds %struct.group, %struct.group* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @str2short(i32 %37)
  %39 = call i32 @Strbuf_append(i32* %34, i32 %38)
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %32, %31
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @USE(i32*) #1

declare dso_local %struct.group* @getgrent(...) #1

declare dso_local i32 @handle_pending_signals(...) #1

declare dso_local i32 @disabled_cleanup(i32*) #1

declare dso_local i32 @Strbuf_append(i32*, i32) #1

declare dso_local i32 @str2short(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
