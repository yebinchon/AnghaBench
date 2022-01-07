; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_transited.c_decode_realms.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_transited.c_decode_realms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_realm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, %struct.tr_realm**)* @decode_realms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_realms(i32 %0, i8* %1, i32 %2, %struct.tr_realm** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tr_realm**, align 8
  %10 = alloca %struct.tr_realm*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.tr_realm** %3, %struct.tr_realm*** %9, align 8
  store %struct.tr_realm* null, %struct.tr_realm** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %13, align 8
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %103, %4
  %17 = load i32, i32* %14, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %106

20:                                               ; preds = %16
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %12, align 4
  br label %103

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %14, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 92
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 1, i32* %12, align 4
  br label %103

33:                                               ; preds = %24
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 44
  br i1 %40, label %41, label %102

41:                                               ; preds = %33
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8*, i8** %13, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = add nsw i64 %49, 1
  %51 = trunc i64 %50 to i32
  %52 = call i8* @malloc(i32 %51)
  store i8* %52, i8** %11, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @krb5_enomem(i32 %56)
  store i32 %57, i32* %5, align 4
  br label %165

58:                                               ; preds = %41
  %59 = load i8*, i8** %11, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8*, i8** %13, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memcpy(i8* %59, i8* %60, i32 %69)
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8*, i8** %13, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = getelementptr inbounds i8, i8* %71, i64 %79
  store i8 0, i8* %80, align 1
  %81 = load i8*, i8** %11, align 8
  %82 = call %struct.tr_realm* @make_realm(i8* %81)
  store %struct.tr_realm* %82, %struct.tr_realm** %10, align 8
  %83 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %84 = icmp eq %struct.tr_realm* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %58
  %86 = load %struct.tr_realm**, %struct.tr_realm*** %9, align 8
  %87 = load %struct.tr_realm*, %struct.tr_realm** %86, align 8
  %88 = call i32 @free_realms(%struct.tr_realm* %87)
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @krb5_enomem(i32 %89)
  store i32 %90, i32* %5, align 4
  br label %165

91:                                               ; preds = %58
  %92 = load %struct.tr_realm**, %struct.tr_realm*** %9, align 8
  %93 = load %struct.tr_realm*, %struct.tr_realm** %92, align 8
  %94 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %95 = call %struct.tr_realm* @append_realm(%struct.tr_realm* %93, %struct.tr_realm* %94)
  %96 = load %struct.tr_realm**, %struct.tr_realm*** %9, align 8
  store %struct.tr_realm* %95, %struct.tr_realm** %96, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  store i8* %101, i8** %13, align 8
  br label %102

102:                                              ; preds = %91, %33
  br label %103

103:                                              ; preds = %102, %32, %23
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %16

106:                                              ; preds = %16
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8*, i8** %13, align 8
  %112 = ptrtoint i8* %110 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = add nsw i64 %114, 1
  %116 = trunc i64 %115 to i32
  %117 = call i8* @malloc(i32 %116)
  store i8* %117, i8** %11, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %106
  %121 = load %struct.tr_realm**, %struct.tr_realm*** %9, align 8
  %122 = load %struct.tr_realm*, %struct.tr_realm** %121, align 8
  %123 = call i32 @free(%struct.tr_realm* %122)
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @krb5_enomem(i32 %124)
  store i32 %125, i32* %5, align 4
  br label %165

126:                                              ; preds = %106
  %127 = load i8*, i8** %11, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8*, i8** %13, align 8
  %134 = ptrtoint i8* %132 to i64
  %135 = ptrtoint i8* %133 to i64
  %136 = sub i64 %134, %135
  %137 = trunc i64 %136 to i32
  %138 = call i32 @memcpy(i8* %127, i8* %128, i32 %137)
  %139 = load i8*, i8** %11, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8*, i8** %13, align 8
  %145 = ptrtoint i8* %143 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  %148 = getelementptr inbounds i8, i8* %139, i64 %147
  store i8 0, i8* %148, align 1
  %149 = load i8*, i8** %11, align 8
  %150 = call %struct.tr_realm* @make_realm(i8* %149)
  store %struct.tr_realm* %150, %struct.tr_realm** %10, align 8
  %151 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %152 = icmp eq %struct.tr_realm* %151, null
  br i1 %152, label %153, label %159

153:                                              ; preds = %126
  %154 = load %struct.tr_realm**, %struct.tr_realm*** %9, align 8
  %155 = load %struct.tr_realm*, %struct.tr_realm** %154, align 8
  %156 = call i32 @free_realms(%struct.tr_realm* %155)
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @krb5_enomem(i32 %157)
  store i32 %158, i32* %5, align 4
  br label %165

159:                                              ; preds = %126
  %160 = load %struct.tr_realm**, %struct.tr_realm*** %9, align 8
  %161 = load %struct.tr_realm*, %struct.tr_realm** %160, align 8
  %162 = load %struct.tr_realm*, %struct.tr_realm** %10, align 8
  %163 = call %struct.tr_realm* @append_realm(%struct.tr_realm* %161, %struct.tr_realm* %162)
  %164 = load %struct.tr_realm**, %struct.tr_realm*** %9, align 8
  store %struct.tr_realm* %163, %struct.tr_realm** %164, align 8
  store i32 0, i32* %5, align 4
  br label %165

165:                                              ; preds = %159, %153, %120, %85, %55
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @krb5_enomem(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.tr_realm* @make_realm(i8*) #1

declare dso_local i32 @free_realms(%struct.tr_realm*) #1

declare dso_local %struct.tr_realm* @append_realm(%struct.tr_realm*, %struct.tr_realm*) #1

declare dso_local i32 @free(%struct.tr_realm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
