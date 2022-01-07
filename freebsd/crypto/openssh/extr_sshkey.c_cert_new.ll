; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_cert_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_cert_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey_cert = type { i32*, i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sshkey_cert* ()* @cert_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sshkey_cert* @cert_new() #0 {
  %1 = alloca %struct.sshkey_cert*, align 8
  %2 = alloca %struct.sshkey_cert*, align 8
  %3 = call %struct.sshkey_cert* @calloc(i32 1, i32 48)
  store %struct.sshkey_cert* %3, %struct.sshkey_cert** %2, align 8
  %4 = icmp eq %struct.sshkey_cert* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store %struct.sshkey_cert* null, %struct.sshkey_cert** %1, align 8
  br label %35

6:                                                ; preds = %0
  %7 = call i8* (...) @sshbuf_new()
  %8 = bitcast i8* %7 to i32*
  %9 = load %struct.sshkey_cert*, %struct.sshkey_cert** %2, align 8
  %10 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %9, i32 0, i32 5
  store i32* %8, i32** %10, align 8
  %11 = icmp eq i32* %8, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %6
  %13 = call i8* (...) @sshbuf_new()
  %14 = bitcast i8* %13 to i32*
  %15 = load %struct.sshkey_cert*, %struct.sshkey_cert** %2, align 8
  %16 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %15, i32 0, i32 4
  store i32* %14, i32** %16, align 8
  %17 = icmp eq i32* %14, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = call i8* (...) @sshbuf_new()
  %20 = bitcast i8* %19 to i32*
  %21 = load %struct.sshkey_cert*, %struct.sshkey_cert** %2, align 8
  %22 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %21, i32 0, i32 3
  store i32* %20, i32** %22, align 8
  %23 = icmp eq i32* %20, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %12, %6
  %25 = load %struct.sshkey_cert*, %struct.sshkey_cert** %2, align 8
  %26 = call i32 @cert_free(%struct.sshkey_cert* %25)
  store %struct.sshkey_cert* null, %struct.sshkey_cert** %1, align 8
  br label %35

27:                                               ; preds = %18
  %28 = load %struct.sshkey_cert*, %struct.sshkey_cert** %2, align 8
  %29 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load %struct.sshkey_cert*, %struct.sshkey_cert** %2, align 8
  %31 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.sshkey_cert*, %struct.sshkey_cert** %2, align 8
  %33 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = load %struct.sshkey_cert*, %struct.sshkey_cert** %2, align 8
  store %struct.sshkey_cert* %34, %struct.sshkey_cert** %1, align 8
  br label %35

35:                                               ; preds = %27, %24, %5
  %36 = load %struct.sshkey_cert*, %struct.sshkey_cert** %1, align 8
  ret %struct.sshkey_cert* %36
}

declare dso_local %struct.sshkey_cert* @calloc(i32, i32) #1

declare dso_local i8* @sshbuf_new(...) #1

declare dso_local i32 @cert_free(%struct.sshkey_cert*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
