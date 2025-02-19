
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_params {int card_rca; int card_features; int card_ocr; int io_ocr; int sdio_func_count; } ;


 int CARD_FEATURE_MEMORY ;
 int CARD_FEATURE_MMC ;
 int CARD_FEATURE_SD20 ;
 int CARD_FEATURE_SDHC ;
 int CARD_FEATURE_SDIO ;
 int printf (char*,...) ;

void
mmc_print_ident(struct mmc_params *ident_data)
{
        printf("Relative addr: %08x\n", ident_data->card_rca);
        printf("Card features: <");
        if (ident_data->card_features & CARD_FEATURE_MMC)
                printf("MMC ");
        if (ident_data->card_features & CARD_FEATURE_MEMORY)
                printf("Memory ");
        if (ident_data->card_features & CARD_FEATURE_SDHC)
                printf("High-Capacity ");
        if (ident_data->card_features & CARD_FEATURE_SD20)
                printf("SD2.0-Conditions ");
        if (ident_data->card_features & CARD_FEATURE_SDIO)
                printf("SDIO ");
        printf(">\n");

        if (ident_data->card_features & CARD_FEATURE_MEMORY)
                printf("Card memory OCR: %08x\n", ident_data->card_ocr);

        if (ident_data->card_features & CARD_FEATURE_SDIO) {
                printf("Card IO OCR: %08x\n", ident_data->io_ocr);
                printf("Number of funcitions: %u\n", ident_data->sdio_func_count);
        }
}
