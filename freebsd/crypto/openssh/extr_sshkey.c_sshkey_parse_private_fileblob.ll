; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_parse_private_fileblob.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_parse_private_fileblob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }
%struct.sshkey = type { i32 }

@KEY_UNSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_parse_private_fileblob(%struct.sshbuf* %0, i8* %1, %struct.sshkey** %2, i8** %3) #0 {
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sshkey**, align 8
  %8 = alloca i8**, align 8
  store %struct.sshbuf* %0, %struct.sshbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.sshkey** %2, %struct.sshkey*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %9 = load %struct.sshkey**, %struct.sshkey*** %7, align 8
  %10 = icmp ne %struct.sshkey** %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = load %struct.sshkey**, %struct.sshkey*** %7, align 8
  store %struct.sshkey* null, %struct.sshkey** %12, align 8
  br label %13

13:                                               ; preds = %11, %4
  %14 = load i8**, i8*** %8, align 8
  %15 = icmp ne i8** %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i8**, i8*** %8, align 8
  store i8* null, i8** %17, align 8
  br label %18

18:                                               ; preds = %16, %13
  %19 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %20 = load i32, i32* @KEY_UNSPEC, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.sshkey**, %struct.sshkey*** %7, align 8
  %23 = load i8**, i8*** %8, align 8
  %24 = call i32 @sshkey_parse_private_fileblob_type(%struct.sshbuf* %19, i32 %20, i8* %21, %struct.sshkey** %22, i8** %23)
  ret i32 %24
}

declare dso_local i32 @sshkey_parse_private_fileblob_type(%struct.sshbuf*, i32, i8*, %struct.sshkey**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
