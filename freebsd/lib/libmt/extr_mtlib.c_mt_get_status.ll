; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmt/extr_mtlib.c_mt_get_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmt/extr_mtlib.c_mt_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt_status_data = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@XML_STATUS_ERROR = common dso_local global i32 0, align 4
@mt_start_element = common dso_local global i32 0, align 4
@mt_end_element = common dso_local global i32 0, align 4
@mt_char_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt_get_status(i8* %0, %struct.mt_status_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mt_status_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.mt_status_data* %1, %struct.mt_status_data** %5, align 8
  %8 = load %struct.mt_status_data*, %struct.mt_status_data** %5, align 8
  %9 = call i32 @bzero(%struct.mt_status_data* %8, i32 4)
  %10 = load %struct.mt_status_data*, %struct.mt_status_data** %5, align 8
  %11 = getelementptr inbounds %struct.mt_status_data, %struct.mt_status_data* %10, i32 0, i32 0
  %12 = call i32 @STAILQ_INIT(i32* %11)
  %13 = call i32* @XML_ParserCreate(i32* null)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  store i32 %17, i32* @errno, align 4
  %18 = load i32, i32* @XML_STATUS_ERROR, align 4
  store i32 %18, i32* %3, align 4
  br label %38

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.mt_status_data*, %struct.mt_status_data** %5, align 8
  %22 = call i32 @XML_SetUserData(i32* %20, %struct.mt_status_data* %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @mt_start_element, align 4
  %25 = load i32, i32* @mt_end_element, align 4
  %26 = call i32 @XML_SetElementHandler(i32* %23, i32 %24, i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @mt_char_handler, align 4
  %29 = call i32 @XML_SetCharacterDataHandler(i32* %27, i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = call i32 @XML_Parse(i32* %30, i8* %31, i32 %33, i32 1)
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @XML_ParserFree(i32* %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %19, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @bzero(%struct.mt_status_data*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32* @XML_ParserCreate(i32*) #1

declare dso_local i32 @XML_SetUserData(i32*, %struct.mt_status_data*) #1

declare dso_local i32 @XML_SetElementHandler(i32*, i32, i32) #1

declare dso_local i32 @XML_SetCharacterDataHandler(i32*, i32) #1

declare dso_local i32 @XML_Parse(i32*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @XML_ParserFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
