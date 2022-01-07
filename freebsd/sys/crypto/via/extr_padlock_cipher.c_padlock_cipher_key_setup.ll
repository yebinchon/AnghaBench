; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_cipher.c_padlock_cipher_key_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_cipher.c_padlock_cipher_key_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padlock_session = type { i8**, i8**, %union.padlock_cw }
%union.padlock_cw = type { i64 }

@PADLOCK_KEY_GENERATION_SW = common dso_local global i64 0, align 8
@RIJNDAEL_MAXNR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.padlock_session*, i32, i32)* @padlock_cipher_key_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @padlock_cipher_key_setup(%struct.padlock_session* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.padlock_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.padlock_cw*, align 8
  %8 = alloca i32, align 4
  store %struct.padlock_session* %0, %struct.padlock_session** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %10 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %9, i32 0, i32 2
  store %union.padlock_cw* %10, %union.padlock_cw** %7, align 8
  %11 = load %union.padlock_cw*, %union.padlock_cw** %7, align 8
  %12 = bitcast %union.padlock_cw* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PADLOCK_KEY_GENERATION_SW, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %68

16:                                               ; preds = %3
  %17 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %18 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %17, i32 0, i32 1
  %19 = load i8**, i8*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @rijndaelKeySetupEnc(i8** %19, i32 %20, i32 %21)
  %23 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %24 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @rijndaelKeySetupDec(i8** %25, i32 %26, i32 %27)
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %64, %16
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @RIJNDAEL_MAXNR, align 4
  %32 = add nsw i32 %31, 1
  %33 = mul nsw i32 4, %32
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %29
  %36 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %37 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %36, i32 0, i32 1
  %38 = load i8**, i8*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @ntohl(i8* %42)
  %44 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %45 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %44, i32 0, i32 1
  %46 = load i8**, i8*** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8* %43, i8** %49, align 8
  %50 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %51 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @ntohl(i8* %56)
  %58 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %59 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* %57, i8** %63, align 8
  br label %64

64:                                               ; preds = %35
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %29

67:                                               ; preds = %29
  br label %81

68:                                               ; preds = %3
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %71 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %70, i32 0, i32 1
  %72 = load i8**, i8*** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @bcopy(i32 %69, i8** %72, i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.padlock_session*, %struct.padlock_session** %4, align 8
  %77 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %76, i32 0, i32 0
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @bcopy(i32 %75, i8** %78, i32 %79)
  br label %81

81:                                               ; preds = %68, %67
  ret void
}

declare dso_local i32 @rijndaelKeySetupEnc(i8**, i32, i32) #1

declare dso_local i32 @rijndaelKeySetupDec(i8**, i32, i32) #1

declare dso_local i8* @ntohl(i8*) #1

declare dso_local i32 @bcopy(i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
