; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_deserialise_identity2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_deserialise_identity2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }
%struct.sshkey = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshbuf*, %struct.sshkey**, i8**)* @deserialise_identity2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deserialise_identity2(%struct.sshbuf* %0, %struct.sshkey** %1, i8** %2) #0 {
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca %struct.sshkey**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.sshbuf* %0, %struct.sshbuf** %4, align 8
  store %struct.sshkey** %1, %struct.sshkey*** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i8* null, i8** %8, align 8
  %11 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %12 = call i32 @sshbuf_get_string_direct(%struct.sshbuf* %11, i32** %9, i64* %10)
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %16 = call i32 @sshbuf_get_cstring(%struct.sshbuf* %15, i8** %8, i32* null)
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %3
  br label %33

19:                                               ; preds = %14
  %20 = load i32*, i32** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.sshkey**, %struct.sshkey*** %5, align 8
  %23 = call i32 @sshkey_from_blob(i32* %20, i64 %21, %struct.sshkey** %22)
  store i32 %23, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %33

26:                                               ; preds = %19
  %27 = load i8**, i8*** %6, align 8
  %28 = icmp ne i8** %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i8*, i8** %8, align 8
  %31 = load i8**, i8*** %6, align 8
  store i8* %30, i8** %31, align 8
  store i8* null, i8** %8, align 8
  br label %32

32:                                               ; preds = %29, %26
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %25, %18
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @sshbuf_get_string_direct(%struct.sshbuf*, i32**, i64*) #1

declare dso_local i32 @sshbuf_get_cstring(%struct.sshbuf*, i8**, i32*) #1

declare dso_local i32 @sshkey_from_blob(i32*, i64, %struct.sshkey**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
