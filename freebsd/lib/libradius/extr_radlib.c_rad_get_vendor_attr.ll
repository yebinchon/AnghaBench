; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_get_vendor_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_get_vendor_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vendor_attribute = type { i8*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rad_get_vendor_attr(i32* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.vendor_attribute*, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.vendor_attribute*
  store %struct.vendor_attribute* %10, %struct.vendor_attribute** %7, align 8
  %11 = load %struct.vendor_attribute*, %struct.vendor_attribute** %7, align 8
  %12 = getelementptr inbounds %struct.vendor_attribute, %struct.vendor_attribute* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ntohl(i32 %13)
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct.vendor_attribute*, %struct.vendor_attribute** %7, align 8
  %17 = getelementptr inbounds %struct.vendor_attribute, %struct.vendor_attribute* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8**, i8*** %5, align 8
  store i8* %18, i8** %19, align 8
  %20 = load %struct.vendor_attribute*, %struct.vendor_attribute** %7, align 8
  %21 = getelementptr inbounds %struct.vendor_attribute, %struct.vendor_attribute* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = load i64*, i64** %6, align 8
  store i64 %24, i64* %25, align 8
  %26 = load %struct.vendor_attribute*, %struct.vendor_attribute** %7, align 8
  %27 = getelementptr inbounds %struct.vendor_attribute, %struct.vendor_attribute* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  ret i32 %28
}

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
