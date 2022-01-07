; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/dev/usb/extr_t_hid.c_locate_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/dev/usb/extr_t_hid.c_locate_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_item = type { i64, i32, i32, i64 }
%struct.hid_data = type { i32 }

@HIO_CONST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i64, i32, %struct.hid_item*)* @locate_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @locate_item(i8* %0, i32 %1, i64 %2, i64 %3, i32 %4, %struct.hid_item* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hid_item*, align 8
  %14 = alloca %struct.hid_data*, align 8
  %15 = alloca %struct.hid_item, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.hid_item* %5, %struct.hid_item** %13, align 8
  %16 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call %struct.hid_data* @hid_start_parse(i8* %17, i32 %18, i32 %19)
  store %struct.hid_data* %20, %struct.hid_data** %14, align 8
  br label %21

21:                                               ; preds = %56, %6
  %22 = load %struct.hid_data*, %struct.hid_data** %14, align 8
  %23 = call i64 @hid_get_item(%struct.hid_data* %22, %struct.hid_item* %15)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %15, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %15, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HIO_CONST, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %15, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %15, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.hid_item*, %struct.hid_item** %13, align 8
  %48 = icmp ne %struct.hid_item* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.hid_item*, %struct.hid_item** %13, align 8
  %51 = bitcast %struct.hid_item* %50 to i8*
  %52 = bitcast %struct.hid_item* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 24, i1 false)
  br label %53

53:                                               ; preds = %49, %46
  %54 = load %struct.hid_data*, %struct.hid_data** %14, align 8
  %55 = call i32 @hid_end_parse(%struct.hid_data* %54)
  store i32 1, i32* %7, align 4
  br label %60

56:                                               ; preds = %41, %36, %30, %25
  br label %21

57:                                               ; preds = %21
  %58 = load %struct.hid_data*, %struct.hid_data** %14, align 8
  %59 = call i32 @hid_end_parse(%struct.hid_data* %58)
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local %struct.hid_data* @hid_start_parse(i8*, i32, i32) #1

declare dso_local i64 @hid_get_item(%struct.hid_data*, %struct.hid_item*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hid_end_parse(%struct.hid_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
