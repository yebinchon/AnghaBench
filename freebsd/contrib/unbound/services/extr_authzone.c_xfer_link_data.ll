; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfer_link_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfer_link_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.auth_chunk*, %struct.auth_chunk* }
%struct.auth_chunk = type { %struct.auth_chunk*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.auth_xfer*)* @xfer_link_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfer_link_data(i32* %0, %struct.auth_xfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.auth_xfer*, align 8
  %6 = alloca %struct.auth_chunk*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.auth_xfer* %1, %struct.auth_xfer** %5, align 8
  %7 = call i64 @calloc(i32 1, i32 16)
  %8 = inttoptr i64 %7 to %struct.auth_chunk*
  store %struct.auth_chunk* %8, %struct.auth_chunk** %6, align 8
  %9 = load %struct.auth_chunk*, %struct.auth_chunk** %6, align 8
  %10 = icmp ne %struct.auth_chunk* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

12:                                               ; preds = %2
  %13 = load %struct.auth_chunk*, %struct.auth_chunk** %6, align 8
  %14 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %13, i32 0, i32 0
  store %struct.auth_chunk* null, %struct.auth_chunk** %14, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @sldns_buffer_limit(i32* %15)
  %17 = load %struct.auth_chunk*, %struct.auth_chunk** %6, align 8
  %18 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @sldns_buffer_begin(i32* %19)
  %21 = load %struct.auth_chunk*, %struct.auth_chunk** %6, align 8
  %22 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memdup(i32 %20, i32 %23)
  %25 = load %struct.auth_chunk*, %struct.auth_chunk** %6, align 8
  %26 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.auth_chunk*, %struct.auth_chunk** %6, align 8
  %28 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %12
  %32 = load %struct.auth_chunk*, %struct.auth_chunk** %6, align 8
  %33 = call i32 @free(%struct.auth_chunk* %32)
  store i32 0, i32* %3, align 4
  br label %68

34:                                               ; preds = %12
  %35 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %36 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.auth_chunk*, %struct.auth_chunk** %38, align 8
  %40 = icmp ne %struct.auth_chunk* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %34
  %42 = load %struct.auth_chunk*, %struct.auth_chunk** %6, align 8
  %43 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %44 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store %struct.auth_chunk* %42, %struct.auth_chunk** %46, align 8
  br label %47

47:                                               ; preds = %41, %34
  %48 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %49 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.auth_chunk*, %struct.auth_chunk** %51, align 8
  %53 = icmp ne %struct.auth_chunk* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load %struct.auth_chunk*, %struct.auth_chunk** %6, align 8
  %56 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %57 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.auth_chunk*, %struct.auth_chunk** %59, align 8
  %61 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %60, i32 0, i32 0
  store %struct.auth_chunk* %55, %struct.auth_chunk** %61, align 8
  br label %62

62:                                               ; preds = %54, %47
  %63 = load %struct.auth_chunk*, %struct.auth_chunk** %6, align 8
  %64 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %65 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store %struct.auth_chunk* %63, %struct.auth_chunk** %67, align 8
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %31, %11
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @sldns_buffer_limit(i32*) #1

declare dso_local i32 @memdup(i32, i32) #1

declare dso_local i32 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @free(%struct.auth_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
