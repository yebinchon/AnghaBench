; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_add_ntlm_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_add_ntlm_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcm_ntlm_cred = type { i32, i32, i32, %struct.kcm_ntlm_cred*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ENOMEM = common dso_local global i64 0, align 8
@ntlm_head = common dso_local global %struct.kcm_ntlm_cred* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_4__*, i32, i32*, i32*)* @kcm_op_add_ntlm_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kcm_op_add_ntlm_cred(i32 %0, %struct.TYPE_4__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.kcm_ntlm_cred*, align 8
  %13 = alloca %struct.kcm_ntlm_cred*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = call %struct.kcm_ntlm_cred* @calloc(i32 1, i32 40)
  store %struct.kcm_ntlm_cred* %16, %struct.kcm_ntlm_cred** %12, align 8
  %17 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %18 = icmp eq %struct.kcm_ntlm_cred* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i64, i64* @ENOMEM, align 8
  store i64 %20, i64* %6, align 8
  br label %99

21:                                               ; preds = %5
  %22 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %23 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @RAND_bytes(i32 %24, i32 4)
  %26 = load i32*, i32** %10, align 8
  %27 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %28 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %27, i32 0, i32 6
  %29 = call i64 @krb5_ret_stringz(i32* %26, i32* %28)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %95

33:                                               ; preds = %21
  %34 = load i32*, i32** %10, align 8
  %35 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %36 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %35, i32 0, i32 5
  %37 = call i64 @krb5_ret_stringz(i32* %34, i32* %36)
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %14, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %95

41:                                               ; preds = %33
  %42 = load i32*, i32** %10, align 8
  %43 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %44 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %43, i32 0, i32 4
  %45 = call i64 @krb5_ret_data(i32* %42, i32* %44)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %95

49:                                               ; preds = %41
  %50 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %51 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %54 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %57 = call %struct.kcm_ntlm_cred* @find_ntlm_cred(i32 %52, i32 %55, %struct.TYPE_4__* %56)
  store %struct.kcm_ntlm_cred* %57, %struct.kcm_ntlm_cred** %13, align 8
  %58 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %13, align 8
  %59 = icmp ne %struct.kcm_ntlm_cred* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %49
  %61 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %13, align 8
  %62 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %15, align 4
  %64 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %65 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %13, align 8
  %68 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %71 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %73 = call i32 @free_cred(%struct.kcm_ntlm_cred* %72)
  %74 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %13, align 8
  store %struct.kcm_ntlm_cred* %74, %struct.kcm_ntlm_cred** %12, align 8
  br label %80

75:                                               ; preds = %49
  %76 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** @ntlm_head, align 8
  %77 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %78 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %77, i32 0, i32 3
  store %struct.kcm_ntlm_cred* %76, %struct.kcm_ntlm_cred** %78, align 8
  %79 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  store %struct.kcm_ntlm_cred* %79, %struct.kcm_ntlm_cred** @ntlm_head, align 8
  br label %80

80:                                               ; preds = %75, %60
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %85 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %90 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %93 = getelementptr inbounds %struct.kcm_ntlm_cred, %struct.kcm_ntlm_cred* %92, i32 0, i32 0
  %94 = call i32 @krb5_storage_write(i32* %91, i32* %93, i32 4)
  store i64 0, i64* %6, align 8
  br label %99

95:                                               ; preds = %48, %40, %32
  %96 = load %struct.kcm_ntlm_cred*, %struct.kcm_ntlm_cred** %12, align 8
  %97 = call i32 @free_cred(%struct.kcm_ntlm_cred* %96)
  %98 = load i64, i64* %14, align 8
  store i64 %98, i64* %6, align 8
  br label %99

99:                                               ; preds = %95, %80, %19
  %100 = load i64, i64* %6, align 8
  ret i64 %100
}

declare dso_local %struct.kcm_ntlm_cred* @calloc(i32, i32) #1

declare dso_local i32 @RAND_bytes(i32, i32) #1

declare dso_local i64 @krb5_ret_stringz(i32*, i32*) #1

declare dso_local i64 @krb5_ret_data(i32*, i32*) #1

declare dso_local %struct.kcm_ntlm_cred* @find_ntlm_cred(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @free_cred(%struct.kcm_ntlm_cred*) #1

declare dso_local i32 @krb5_storage_write(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
