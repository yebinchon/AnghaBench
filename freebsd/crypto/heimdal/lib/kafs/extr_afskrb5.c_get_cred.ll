; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afskrb5.c_get_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afskrb5.c_get_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kafs_data = type { %struct.krb5_kafs_data* }
%struct.krb5_kafs_data = type { i32, i32 }
%struct.kafs_token = type { i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@ETYPE_DES_CBC_CRC = common dso_local global i32 0, align 4
@ETYPE_DES_CBC_MD5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kafs_data*, i8*, i8*, i8*, i32, %struct.kafs_token*)* @get_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cred(%struct.kafs_data* %0, i8* %1, i8* %2, i8* %3, i32 %4, %struct.kafs_token* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kafs_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.kafs_token*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca %struct.krb5_kafs_data*, align 8
  %18 = alloca i32, align 4
  store %struct.kafs_data* %0, %struct.kafs_data** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.kafs_token* %5, %struct.kafs_token** %13, align 8
  %19 = load %struct.kafs_data*, %struct.kafs_data** %8, align 8
  %20 = getelementptr inbounds %struct.kafs_data, %struct.kafs_data* %19, i32 0, i32 0
  %21 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %20, align 8
  store %struct.krb5_kafs_data* %21, %struct.krb5_kafs_data** %17, align 8
  %22 = call i32 @memset(%struct.TYPE_9__* %15, i32 0, i32 12)
  %23 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %17, align 8
  %24 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %27 = load i8*, i8** %11, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @krb5_make_principal(i32 %25, i32* %26, i8* %27, i8* %28, i8* %29, i32* null)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %7, align 4
  br label %155

35:                                               ; preds = %6
  %36 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %17, align 8
  %37 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %17, align 8
  %40 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %43 = call i32 @krb5_cc_get_principal(i32 %38, i32 %41, i32* %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %35
  %47 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %17, align 8
  %48 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @krb5_free_principal(i32 %49, i32 %51)
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %7, align 4
  br label %155

54:                                               ; preds = %35
  %55 = load i32, i32* @ETYPE_DES_CBC_CRC, align 4
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %17, align 8
  %59 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @krb5_enctype_valid(i32 %60, i32 %63)
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %54
  %68 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %17, align 8
  %69 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @krb5_enctype_enable(i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %67, %54
  %76 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %17, align 8
  %77 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %17, align 8
  %80 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @krb5_get_credentials(i32 %78, i32 0, i32 %81, %struct.TYPE_9__* %15, %struct.TYPE_9__** %16)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %75
  %86 = load i32, i32* @ETYPE_DES_CBC_MD5, align 4
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %17, align 8
  %90 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %17, align 8
  %93 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @krb5_get_credentials(i32 %91, i32 0, i32 %94, %struct.TYPE_9__* %15, %struct.TYPE_9__** %16)
  store i32 %95, i32* %14, align 4
  br label %96

96:                                               ; preds = %85, %75
  %97 = load i32, i32* %18, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %17, align 8
  %101 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @krb5_enctype_disable(i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %99, %96
  %108 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %17, align 8
  %109 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @krb5_free_principal(i32 %110, i32 %112)
  %114 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %17, align 8
  %115 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @krb5_free_principal(i32 %116, i32 %118)
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %107
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %7, align 4
  br label %155

124:                                              ; preds = %107
  %125 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %17, align 8
  %126 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %17, align 8
  %129 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load i8*, i8** %10, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %143

135:                                              ; preds = %124
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i8*, i8** %10, align 8
  br label %145

143:                                              ; preds = %135, %124
  %144 = load i8*, i8** %11, align 8
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i8* [ %142, %141 ], [ %144, %143 ]
  %147 = load %struct.kafs_token*, %struct.kafs_token** %13, align 8
  %148 = call i32 @v5_convert(i32 %127, i32 %130, %struct.TYPE_9__* %131, i32 %132, i8* %146, %struct.kafs_token* %147)
  store i32 %148, i32* %14, align 4
  %149 = load %struct.krb5_kafs_data*, %struct.krb5_kafs_data** %17, align 8
  %150 = getelementptr inbounds %struct.krb5_kafs_data, %struct.krb5_kafs_data* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %153 = call i32 @krb5_free_creds(i32 %151, %struct.TYPE_9__* %152)
  %154 = load i32, i32* %14, align 4
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %145, %122, %46, %33
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @krb5_make_principal(i32, i32*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @krb5_cc_get_principal(i32, i32, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i32 @krb5_enctype_valid(i32, i32) #1

declare dso_local i32 @krb5_enctype_enable(i32, i32) #1

declare dso_local i32 @krb5_get_credentials(i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__**) #1

declare dso_local i32 @krb5_enctype_disable(i32, i32) #1

declare dso_local i32 @v5_convert(i32, i32, %struct.TYPE_9__*, i32, i8*, %struct.kafs_token*) #1

declare dso_local i32 @krb5_free_creds(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
