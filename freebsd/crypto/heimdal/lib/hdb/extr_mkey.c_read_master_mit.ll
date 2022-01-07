; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_mkey.c_read_master_mit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_mkey.c_read_master_mit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to open %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32*)* @read_master_mit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_master_mit(i32 %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = load i32, i32* @O_BINARY, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @open(i8* %16, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load i32, i32* @errno, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %15, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 @krb5_set_error_message(i32 %25, i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %29)
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %5, align 4
  br label %78

32:                                               ; preds = %4
  %33 = load i32, i32* %10, align 4
  %34 = call i32* @krb5_storage_from_fd(i32 %33)
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @close(i32 %38)
  %40 = load i32, i32* @errno, align 4
  store i32 %40, i32* %5, align 4
  br label %78

41:                                               ; preds = %32
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @krb5_storage_set_flags(i32* %42, i32 %43)
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @krb5_ret_int16(i32* %45, i32* %13)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %72

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @krb5_enctype_valid(i32 %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %72

57:                                               ; preds = %50
  %58 = load i32, i32* %13, align 4
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %62 = call i32 @krb5_ret_data(i32* %60, i32* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %72

66:                                               ; preds = %57
  %67 = load i32, i32* %6, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @hdb_process_master_key(i32 %67, i32 1, %struct.TYPE_4__* %14, i32 0, i32* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @krb5_free_keyblock_contents(i32 %70, %struct.TYPE_4__* %14)
  br label %72

72:                                               ; preds = %66, %65, %56, %49
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @krb5_storage_free(i32* %73)
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @close(i32 %75)
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %72, %37, %23
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32* @krb5_storage_from_fd(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @krb5_storage_set_flags(i32*, i32) #1

declare dso_local i32 @krb5_ret_int16(i32*, i32*) #1

declare dso_local i32 @krb5_enctype_valid(i32, i32) #1

declare dso_local i32 @krb5_ret_data(i32*, i32*) #1

declare dso_local i32 @hdb_process_master_key(i32, i32, %struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @krb5_free_keyblock_contents(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
