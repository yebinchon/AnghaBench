; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_gen.c_is_export.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_gen.c_is_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sexport = type { i32, i32, %struct.sexport* }

@exports = common dso_local global %struct.sexport* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_export(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sexport*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.sexport*, %struct.sexport** @exports, align 8
  %6 = icmp eq %struct.sexport* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %29

8:                                                ; preds = %1
  %9 = load %struct.sexport*, %struct.sexport** @exports, align 8
  store %struct.sexport* %9, %struct.sexport** %4, align 8
  br label %10

10:                                               ; preds = %24, %8
  %11 = load %struct.sexport*, %struct.sexport** %4, align 8
  %12 = icmp ne %struct.sexport* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load %struct.sexport*, %struct.sexport** %4, align 8
  %15 = getelementptr inbounds %struct.sexport, %struct.sexport* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strcmp(i32 %16, i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.sexport*, %struct.sexport** %4, align 8
  %22 = getelementptr inbounds %struct.sexport, %struct.sexport* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  store i32 1, i32* %2, align 4
  br label %29

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.sexport*, %struct.sexport** %4, align 8
  %26 = getelementptr inbounds %struct.sexport, %struct.sexport* %25, i32 0, i32 2
  %27 = load %struct.sexport*, %struct.sexport** %26, align 8
  store %struct.sexport* %27, %struct.sexport** %4, align 8
  br label %10

28:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %20, %7
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
