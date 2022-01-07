; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/blake2/extr_blake2-sw.c_blake2s_xform_final.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/blake2/extr_blake2-sw.c_blake2s_xform_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blake2s_xform_ctx = type { i32 }

@BLAKE2S_OUTBYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"blake2s_final: invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @blake2s_xform_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blake2s_xform_final(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.blake2s_xform_ctx*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.blake2s_xform_ctx*
  store %struct.blake2s_xform_ctx* %8, %struct.blake2s_xform_ctx** %5, align 8
  %9 = load %struct.blake2s_xform_ctx*, %struct.blake2s_xform_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.blake2s_xform_ctx, %struct.blake2s_xform_ctx* %9, i32 0, i32 0
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @BLAKE2S_OUTBYTES, align 4
  %13 = call i32 @blake2s_final_ref(i32* %10, i32* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @blake2s_final_ref(i32*, i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
