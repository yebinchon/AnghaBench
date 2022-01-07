; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_hash.c_padlock_hash_key_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_hash.c_padlock_hash_key_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padlock_session = type { i32, i32, %struct.auth_hash* }
%struct.auth_hash = type { i32, i32 (i32, i32*, i32)*, i32 (i32)* }

@HMAC_IPAD_VAL = common dso_local global i32 0, align 4
@hmac_ipad_buffer = common dso_local global i32* null, align 8
@HMAC_OPAD_VAL = common dso_local global i32 0, align 4
@hmac_opad_buffer = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.padlock_session*, i32*, i32)* @padlock_hash_key_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @padlock_hash_key_setup(%struct.padlock_session* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.padlock_session*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.auth_hash*, align 8
  %8 = alloca i32, align 4
  store %struct.padlock_session* %0, %struct.padlock_session** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sdiv i32 %9, 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %12 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %11, i32 0, i32 2
  %13 = load %struct.auth_hash*, %struct.auth_hash** %12, align 8
  store %struct.auth_hash* %13, %struct.auth_hash** %7, align 8
  %14 = load %struct.auth_hash*, %struct.auth_hash** %7, align 8
  %15 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %16 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @padlock_free_ctx(%struct.auth_hash* %14, i32 %17)
  %19 = load %struct.auth_hash*, %struct.auth_hash** %7, align 8
  %20 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %21 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @padlock_free_ctx(%struct.auth_hash* %19, i32 %22)
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %36, %3
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i32, i32* @HMAC_IPAD_VAL, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %34, %29
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %24

39:                                               ; preds = %24
  %40 = load %struct.auth_hash*, %struct.auth_hash** %7, align 8
  %41 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %40, i32 0, i32 2
  %42 = load i32 (i32)*, i32 (i32)** %41, align 8
  %43 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %44 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 %42(i32 %45)
  %47 = load %struct.auth_hash*, %struct.auth_hash** %7, align 8
  %48 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %47, i32 0, i32 1
  %49 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %48, align 8
  %50 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %51 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 %49(i32 %52, i32* %53, i32 %54)
  %56 = load %struct.auth_hash*, %struct.auth_hash** %7, align 8
  %57 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %56, i32 0, i32 1
  %58 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %57, align 8
  %59 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %60 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** @hmac_ipad_buffer, align 8
  %63 = load %struct.auth_hash*, %struct.auth_hash** %7, align 8
  %64 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %65, %66
  %68 = call i32 %58(i32 %61, i32* %62, i32 %67)
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %83, %39
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load i32, i32* @HMAC_IPAD_VAL, align 4
  %75 = load i32, i32* @HMAC_OPAD_VAL, align 4
  %76 = xor i32 %74, %75
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = xor i32 %81, %76
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %69

86:                                               ; preds = %69
  %87 = load %struct.auth_hash*, %struct.auth_hash** %7, align 8
  %88 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %87, i32 0, i32 2
  %89 = load i32 (i32)*, i32 (i32)** %88, align 8
  %90 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %91 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 %89(i32 %92)
  %94 = load %struct.auth_hash*, %struct.auth_hash** %7, align 8
  %95 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %94, i32 0, i32 1
  %96 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %95, align 8
  %97 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %98 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 %96(i32 %99, i32* %100, i32 %101)
  %103 = load %struct.auth_hash*, %struct.auth_hash** %7, align 8
  %104 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %103, i32 0, i32 1
  %105 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %104, align 8
  %106 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %107 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32*, i32** @hmac_opad_buffer, align 8
  %110 = load %struct.auth_hash*, %struct.auth_hash** %7, align 8
  %111 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sub nsw i32 %112, %113
  %115 = call i32 %105(i32 %108, i32* %109, i32 %114)
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %128, %86
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = load i32, i32* @HMAC_OPAD_VAL, align 4
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = xor i32 %126, %121
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %120
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %116

131:                                              ; preds = %116
  ret void
}

declare dso_local i32 @padlock_free_ctx(%struct.auth_hash*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
