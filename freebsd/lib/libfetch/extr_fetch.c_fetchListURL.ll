; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_fetch.c_fetchListURL.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_fetch.c_fetchListURL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url_ent = type { i32 }
%struct.url = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.url_ent* @fetchListURL(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.url_ent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.url*, align 8
  %7 = alloca %struct.url_ent*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.url* @fetchParseURL(i8* %8)
  store %struct.url* %9, %struct.url** %6, align 8
  %10 = icmp eq %struct.url* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.url_ent* null, %struct.url_ent** %3, align 8
  br label %19

12:                                               ; preds = %2
  %13 = load %struct.url*, %struct.url** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call %struct.url_ent* @fetchList(%struct.url* %13, i8* %14)
  store %struct.url_ent* %15, %struct.url_ent** %7, align 8
  %16 = load %struct.url*, %struct.url** %6, align 8
  %17 = call i32 @fetchFreeURL(%struct.url* %16)
  %18 = load %struct.url_ent*, %struct.url_ent** %7, align 8
  store %struct.url_ent* %18, %struct.url_ent** %3, align 8
  br label %19

19:                                               ; preds = %12, %11
  %20 = load %struct.url_ent*, %struct.url_ent** %3, align 8
  ret %struct.url_ent* %20
}

declare dso_local %struct.url* @fetchParseURL(i8*) #1

declare dso_local %struct.url_ent* @fetchList(%struct.url*, i8*) #1

declare dso_local i32 @fetchFreeURL(%struct.url*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
